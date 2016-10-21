! This file is part of Bottom RedOx Model (BROM, v.1.1).
! BROM is free software: you can redistribute it and/or modify it under
! the terms of the GNU General Public License as published by the Free
! Software Foundation (https://www.gnu.org/licenses/gpl.html).
! It is distributed in the hope that it will be useful, but WITHOUT ANY
! WARRANTY; without even the implied warranty of MERCHANTABILITY or
! FITNESS FOR A PARTICULAR PURPOSE. A copy of the license is provided in
! the COPYING file at the root of the BROM distribution.
!-----------------------------------------------------------------------
! Original author(s): Evgeniy Yakushev, Shamil Yakubov,
!                     Elizaveta Protsenko, Phil Wallhead
!-----------------------------------------------------------------------

    module brom_transport

    use fabm
    use fabm_config
    use fabm_types, only: attribute_length, rk
    use fabm_standard_variables
    use io_netcdf
    use io_ascii
    use mtridiagonal, only: init_tridiagonal,clean_tridiagonal
    use ids         !Provides access to variable indices id_O2 etc.


    implicit none
    private
    public init_brom_transport, do_brom_transport, clear_brom_transport


    !FABM model with all data and procedures related to biogeochemistry
    type (type_model) :: model
    type (type_horizontal_standard_variable),parameter :: &
        ice_thickness = type_horizontal_standard_variable(name=' ice_thickness',units='m')
    type (type_bulk_standard_variable),parameter :: &
        volume_of_cell = type_bulk_standard_variable(name=' volume_of_cell')


    !Solution parameters to be read from brom.yaml (see brom.yaml for details)
    integer   :: i_min, i_water, i_max     !x-axis related
    integer   :: k_min, k_wat_bbl, k_points_below_water !z-axis related
    real(rk)  :: dt, water_layer_thickness
    integer   :: i_day, year, days_in_yr, freq_turb, freq_sed, last_day   !time related
    integer   :: diff_method, kz_bbl_type, bioturb_across_SWI  !vertical diffusivity related
    real(rk)  :: K_O2s
    integer   :: input_type, use_Eair, use_hice, port_initial_state
    integer   :: hmix_niva_brom_bio_O2, hmix_niva_brom_bio_NO3 !I/O related
    character(len=64) :: icfile_name, outfile_name, ncoutfile_name
    integer   :: k_bbl_sed, k_max          !z-axis related
    integer   :: par_max                   !no. BROM variables

    !Forcings to be provided to FABM: These must have the POINTER attribute
    real(rk), pointer, dimension(:)            :: pco2atm, windspeed, hice
    real(rk), pointer, dimension(:,:)          :: surf_flux, Izt, pressure
    real(rk), pointer, dimension(:,:,:)        :: t, s
    real(rk), pointer, dimension(:,:,:)        :: vv, dvv, cc, cc_out, dcc, dcc_R, wbio

    !Surface and bottom forcings, used within brom-transport only
    real(rk), allocatable, dimension(:)        :: Eair
    real(rk), allocatable, dimension(:,:,:)    :: cc_top, cc_bottom

    !Horizontal mixing forcings, used within brom-transport only
    real(rk), allocatable, dimension(:,:,:)    :: hmix_rate
    real(rk), allocatable, dimension(:,:,:,:)  :: cc_hmix

    !Grid parameters and forcings for water column only
    real(rk), allocatable, dimension(:)        :: z_w, dz_w, hz_w
    real(rk), allocatable, dimension(:,:,:)    :: t_w, s_w, kz_w, hmix_rate_w
    real(rk), allocatable, dimension(:,:,:,:)  :: cc_hmix_w

    !Grid parameters and forcings for full column including water and sediments
    real(rk), allocatable, dimension(:)        :: z, dz, hz
    real(rk), allocatable, dimension(:,:)      :: bc_top, bc_bottom, kz_bio, alpha, phi, phi1, phi_inv, tortuosity, kztCFL, wCFL, w_b, u_b
    real(rk), allocatable, dimension(:,:,:)    :: kz, kzti, fick, fick_per_day, sink, sink_per_day, bcpar_top, bcpar_bottom
    real(rk), allocatable, dimension(:,:,:)    :: kz_mol, pF1, pF2, wti
    integer, allocatable, dimension(:)         :: is_solid, k_wat, k_sed, k_sed1
    integer, allocatable, dimension(:,:)       :: bctype_top, bctype_bottom, hmixtype
    character(len=attribute_length), allocatable, dimension(:)    :: par_name

    !Constant forcings that can be read as parameters from brom.yaml
    real(rk) :: wind_speed, pco2_atm, mu0_musw, dphidz_SWI
    real(rk), allocatable, dimension(:)        :: rho

    !Counters
    integer   :: i, k, ip, ip_sol, ip_par


    contains

!=======================================================================================================================
    subroutine init_brom_transport()

    !Initialises the offline vertical transport model BROM-transport

    use ids         !Provides access to variable indices id_O2 etc

    implicit none


    !Reading brom.yaml
    call init_common()

    !Get grid and numerical solution parameters from from brom.yaml
    dt = get_brom_par("dt")
    freq_turb = get_brom_par("freq_turb")
    freq_sed  = get_brom_par("freq_sed ")
    last_day = get_brom_par("last_day")
    water_layer_thickness = get_brom_par("water_layer_thickness")
    k_min = get_brom_par("k_min")
    k_wat_bbl = get_brom_par("k_wat_bbl")
    k_points_below_water = get_brom_par("k_points_below_water")
    i_min = get_brom_par("i_min")
    i_water = get_brom_par("i_water")
    i_max = get_brom_par("i_max")
    year = get_brom_par("year")
    days_in_yr = get_brom_par("days_in_yr")
    diff_method = get_brom_par("diff_method")
    bioturb_across_SWI = get_brom_par("bioturb_across_SWI")
    input_type = get_brom_par("input_type")
    use_Eair = get_brom_par("use_Eair")
    use_hice = get_brom_par("use_hice")
    port_initial_state = get_brom_par("port_initial_state")
    icfile_name = get_brom_name("icfile_name")
    outfile_name = get_brom_name("outfile_name")
    ncoutfile_name = get_brom_name("ncoutfile_name")
    K_O2s = get_brom_par("K_O2s")

    !Initialize FABM model from fabm.yaml
    call fabm_create_model_from_yaml_file(model)
    par_max = size(model%state_variables)

    !Allocate biological variables now that par_max is known
    allocate(surf_flux(i_max,par_max))     !surface flux (tracer unit * m/s, positive for tracer entering column)
    allocate(bc_top(i_max,par_max))
    allocate(bc_bottom(i_max,par_max))
    allocate(bctype_top(i_max,par_max))
    allocate(bctype_bottom(i_max,par_max))
    allocate(bcpar_top(i_max,par_max,3))
    allocate(bcpar_bottom(i_max,par_max,3))
    allocate(par_name(par_max))
    allocate(pco2atm(i_max))
    allocate(windspeed(i_max))
    allocate(cc_top(i_max,par_max,days_in_yr))
    allocate(cc_bottom(i_max,par_max,days_in_yr))
    allocate(is_solid(par_max))
    allocate(hmixtype(i_max,par_max))
    allocate(rho(par_max))

    !Retrieve the parameter names from the model structure
    do ip=1,par_max
        par_name(ip) = model%state_variables(ip)%name
    end do
    !Make the named parameter indices id_O2 etc.
    call get_ids(par_name)


    !Get boudary condition parameters from brom.yaml:
    !bctype = 0, 1, 2, 3 for no flux (default), Dirichlet constant, Dirichlet sinusoid, and Dirichlet netcdf input respectively
    do ip=1,par_max
        bctype_top(i_water,ip) = get_brom_par('bctype_top_' // trim(par_name(ip)),0.0_rk)
        if (bctype_top(i_water,ip).eq.1) then
            bc_top(i_water,ip) = get_brom_par('bc_top_' // trim(par_name(ip)))
            write(*,*) "Constant Dirichlet upper boundary condition for " // trim(par_name(ip))
            write(*,'(a, es10.3)') " = ", bc_top(i_water,ip)
        else if (bctype_top(i_water,ip).eq.2) then     !Model: bc_top = a1top + a2top*sin(omega*(julianday-a3top))
            bcpar_top(i_water,ip,1) = get_brom_par('a1top_' // trim(par_name(ip)))
            bcpar_top(i_water,ip,2) = get_brom_par('a2top_' // trim(par_name(ip)))
            bcpar_top(i_water,ip,3) = get_brom_par('a3top_' // trim(par_name(ip)))
            write(*,*) "Sinusoidal Dirichlet upper boundary condition for " // trim(par_name(ip))
            write(*,'(a, es10.3, a, es10.3, a, es10.3, a)') " = ", bcpar_top(i_water,ip,1), " + ", &
                bcpar_top(i_water,ip,2), "*sin(omega*(julianday -", bcpar_top(i_water,ip,3), "))"
        else if (bctype_top(i_water,ip).eq.3) then     !Read from netcdf
            write(*,*) "NetCDF specified Dirichlet upper boundary condition for " // trim(par_name(ip))
        end if
        bctype_bottom(i_water,ip) = get_brom_par('bctype_bottom_' // trim(par_name(ip)),0.0_rk)
        if (bctype_bottom(i_water,ip).eq.1) then
            bc_bottom(i_water,ip) = get_brom_par('bc_bottom_' // trim(par_name(ip)))
            write(*,*) "Constant Dirichlet lower boundary condition for " // trim(par_name(ip))
            write(*,'(a, es10.3)') " = ", bc_bottom(i_water,ip)
        else if (bctype_bottom(i_water,ip).eq.2) then  !Model: bc_bottom = a1bottom + a2bottom*sin(omega*julianday-a3bottom))
            bcpar_bottom(i_water,ip,1) = get_brom_par('a1bottom_' // trim(par_name(ip)))
            bcpar_bottom(i_water,ip,2) = get_brom_par('a2bottom_' // trim(par_name(ip)))
            bcpar_bottom(i_water,ip,3) = get_brom_par('a3bottom_' // trim(par_name(ip)))
            write(*,*) "Sinusoidal Dirichlet lower boundary condition for " // trim(par_name(ip))
            write(*,'(a, es10.3, a, es10.3, a, es10.3, a)') " = ", bcpar_bottom(i_water,ip,1), " + ", &
                bcpar_bottom(i_water,ip,2), "*sin(omega*(julianday -", bcpar_bottom(i_water,ip,3), "))"
        else if (bctype_bottom(i_water,ip).eq.3) then  !Read from netcdf
            write(*,*) "NetCDF specified Dirichlet lower boundary condition for " // trim(par_name(ip))
        end if
    end do
    write(*,*) "All other boundary conditions use surface and bottom fluxes from FABM"


    !Get horizontal mixing parameters from brom.yaml:
    !!hmixtype = 0, 1 or 2  for no horizontal mixing (default), box model mixing respectively
    do ip=1,par_max
        hmixtype(i_water,ip) = get_brom_par('hmix_' // trim(par_name(ip)),0.0_rk)
        if (hmixtype(i_water,ip).eq.1) then
            write(*,*) "Box-model horizontal mixing assumed for " // trim(par_name(ip))
        end if
        if (hmixtype(i_water,ip).eq.2) then
            write(*,*) "Box-model horizontal mixing (ASCII) assumed for " // trim(par_name(ip))
        end if        
    end do


    !Input forcing data
    if (input_type.eq.0) then !Input sinusoidal seasonal changes (hypothetical)
        call input_primitive_physics(z_w, dz_w, hz_w, k_wat_bbl, water_layer_thickness, t_w, s_w, kz_w, i_water, i_max, days_in_yr)
        allocate(Eair(days_in_yr))
        allocate(hice(days_in_yr))
        Eair = 0.0_rk
        hice = 0.0_rk
        write(*,*) "Done sinusoidal input"
    end if
    if (input_type.eq.1) then !Input physics from ascii
        call input_ascii_physics(z_w, dz_w, hz_w, k_wat_bbl, water_layer_thickness, t_w, s_w, kz_w, i_water, i_max, days_in_yr)
        allocate(Eair(days_in_yr))
        allocate(hice(days_in_yr))
        allocate(cc_hmix_w(i_max,par_max,k_wat_bbl,days_in_yr))
        allocate(hmix_rate_w(i_max,k_wat_bbl,days_in_yr))
        cc_hmix_w = 0.0_rk
        hmix_rate_w = 0.0_rk
        Eair = 0.0_rk
        hice = 0.0_rk
        write(*,*) "Done ascii input"
    end if
    if (input_type.eq.2) then !Input water column physics from netcdf
        call input_netcdf(z_w, dz_w, hz_w, t_w, s_w, kz_w, hmix_rate_w, Eair, use_Eair, hice, use_hice, year, i_water, i_max, &
        days_in_yr, k_wat_bbl, par_name, par_max, bctype_top, bctype_bottom, cc_top, cc_bottom, hmixtype, cc_hmix_w)
        write(*,*) "Done netcdf input"
        !Note: This uses the netCDF file to set z_w = layer midpoints, dz_w = increments between layer midpoints, hz_w = layer thicknesses
    end if


    !Determine total number of vertical grid points (layers) now that k_wat_bbl is determined
    k_max = k_wat_bbl + k_points_below_water


    !Allocate full grid variables now that k_max is known
    allocate(z(k_max))
    allocate(dz(k_max))
    allocate(hz(k_max))
    allocate(t(i_max,k_max,days_in_yr))
    allocate(s(i_max,k_max,days_in_yr))
    allocate(kz(i_max,k_max+1,days_in_yr))
    allocate(hmix_rate(i_max,k_max,days_in_yr))
    allocate(cc_hmix(i_max,par_max,k_max,days_in_yr))
    allocate(kz_mol(i_max,k_max+1,par_max))
    allocate(kz_bio(i_max,k_max+1))
    allocate(pF1(i_max,k_max,par_max))
    allocate(pF2(i_max,k_max+1,par_max))
    allocate(alpha(i_max,k_max))
    allocate(phi(i_max,k_max))
    allocate(phi1(i_max,k_max+1))
    allocate(phi_inv(i_max,k_max))
    allocate(tortuosity(i_max,k_max+1))
    allocate(w_b(i_max,k_max+1))
    allocate(u_b(i_max,k_max+1))
    allocate(wti(i_max,k_max+1,par_max))
    allocate(cc(i_max,k_max,par_max))
    allocate(cc_out(i_max,k_max,par_max))
    allocate(dcc(i_max,k_max,par_max))
    allocate(dcc_R(i_max,k_max,par_max))
    allocate(fick(i_max,k_max+1,par_max))
    allocate(fick_per_day(i_max,k_max+1,par_max))
    allocate(wbio(i_max,k_max,par_max))    !vertical velocity (m/s, negative for sinking)
    allocate(sink(i_max,k_max+1,par_max))  !sinking flux (mmol/m2/s, positive downward)
    allocate(sink_per_day(i_max,k_max+1,par_max))
    allocate(vv(i_max,k_max,1))
    allocate(dvv(i_max,k_max,1))
    allocate(Izt(i_max,k_max))
    allocate(pressure(i_max,k_max))
    allocate(kzti(i_max,k_max+1,par_max))
    allocate(kztCFL(k_max-1,par_max))
    allocate(wCFL(k_max-1,par_max))


    if (k_points_below_water==0) then  !This is to "unlock" BBL and sediments for a "classical" water column model
        k_max=k_wat_bbl
        z=z_w
        dz=dz_w
        hz=hz_w
        k_bbl_sed=k_wat_bbl !needed for Irradiance calculations
    else
        !Construct the full vertical grid
        call make_vert_grid(z, dz, hz, z_w, dz_w, hz_w, k_wat_bbl, k_max, k_bbl_sed)
        write(*,*) "Made vertical grid"
        allocate(k_wat(k_bbl_sed))
        allocate(k_sed(k_max-k_bbl_sed))
        allocate(k_sed1(k_max+1-k_bbl_sed))
        k_wat = (/(k,k=1,k_bbl_sed)/)       !Index vector for all points in the water column
        k_sed = (/(k,k=k_bbl_sed+1,k_max)/) !Index vector for all points in the sediments
        k_sed1 = (/(k,k=k_bbl_sed+1,k_max+1)/) !Indices of layer interfaces in the sediments (including the SWI)
    endif

    !Initialize tridiagonal matrix if necessary
    if (diff_method.gt.0) then
        call init_tridiagonal(k_max)
        write(*,*) "Initialized tridiagonal matrix"
    end if

    !Set model domain
    call fabm_set_domain(model,i_max,k_max)


    !Specify vertical index of surface and bottom
    call model%set_surface_index(k_min)
    call model%set_bottom_index(k_max)


    !Initial volumes of layers:
    vv(i_water,1:k_max,1) = 1.0_rk


    !Make the (full) pressure variable to pass to FABM
    !This is used by brom_eqconst.F90 to compute equilibrium constants for pH calculations
    !and by brom_carb.F90 to compute equilibrium constants for saturation states (subroutine CARFIN)
    do i=1,i_max
        pressure(i,:) = z(:) + 10.0_rk
    end do


    !Point FABM to array slices with biogeochemical state.
    do ip=1,par_max
        call fabm_link_bulk_state_data(model, ip, cc(:,:,ip))
    end do


    !Link temperature and salinity data to FABM (needs to be redone every time julianday is updated below)
    call fabm_link_bulk_data(model, standard_variables%temperature, t(:,:,1))
    call fabm_link_bulk_data(model, standard_variables%practical_salinity, s(:,:,1))


    !Link other data needed by FABM
    call fabm_link_bulk_data(model, standard_variables%downwelling_photosynthetic_radiative_flux, Izt)  !W m-2
    call fabm_link_bulk_data(model, standard_variables%pressure, pressure)                              !dbar
    call fabm_link_horizontal_data(model, standard_variables%wind_speed, windspeed)                     !m s-1
    call fabm_link_horizontal_data(model, standard_variables%mole_fraction_of_carbon_dioxide_in_air, pco2atm)  !ppm
    if (use_hice.eq.1) call fabm_link_horizontal_data(model, ice_thickness, hice)
    call fabm_link_bulk_data(model, volume_of_cell, vv(:,:,1))


    !Check FABM is ready
    call fabm_check_ready(model)


    !Allow FABM models to use their default initialization (this sets cc)
    do k=1,k_max
        call fabm_initialize_state(model, 1, i_max, k)
    end do


    !Read initial values from ascii file if req'd
    if (port_initial_state.eq.1) call porting_initial_state_variables(trim(icfile_name), year, i_day, i_max, k_max, par_max, par_name, cc, vv)


    !Initialize output
    call init_netcdf(trim(ncoutfile_name), i_max, k_max, model, use_Eair, use_hice, year)


    !Establish which variables will be treated as solid phase in the sediments, based on the biological velocity (sinking/floating) from FABM.
    wbio = 0.0_rk
    call fabm_get_vertical_movement(model, i_water, i_water, k_wat_bbl, wbio(i_water:i_water,k_wat_bbl,:))
    wbio = -1.0_rk * wbio !FABM returns NEGATIVE wbio for sinking; sign change here means that wbio is POSITIVE for sinking
    is_solid = 0
    ip_sol = 0
    ip_par = 0
    write(*,*) "The following variables are assumed to join the solid phase in the sediments"
    do ip=1,par_max
        if (wbio(i_water,k_wat_bbl,ip).gt.0.0_rk) then
            is_solid(ip) = 1 !Any variables that SINKS (wbio>0) in the bottom cell of the water column will become "solid" in the sediments
            write(*,*) trim(par_name(ip))
            if (ip_par.eq.0) ip_par = ip !Set ip_par = index of first particulate variable
        else
            if (ip_sol.eq.0) ip_sol = ip !Set ip_par = index of first solute variable
        end if
    end do


    !Complete hydrophysical forcings
    call make_physics_bbl_sed(t, s, kz, hmix_rate, cc_hmix, t_w, s_w, kz_w, hmix_rate_w, cc_hmix_w, kz_mol, kz_bio, &
        z, dz, hz, i_max, i_water, k_wat_bbl, k_bbl_sed, k_max, par_max, days_in_yr, alpha, is_solid, phi, phi1, phi_inv, &
        pF1, pF2, mu0_musw, tortuosity, w_b, u_b, rho, dt, freq_turb, par_name, diff_method, bioturb_across_SWI, &
        ip_sol, ip_par, dphidz_SWI)
    write(*,*) "Made physics of BBL, sediments"


    !Set constant forcings
    wind_speed = get_brom_par("wind_speed")    ! 10m wind speed [m s-1]
    pco2_atm   = get_brom_par("pco2_atm")      ! CO2 partical pressure [ppm]
    pco2atm(:) = pco2_atm                      ! Same pCO2 values for all the surface gridpoints
    windspeed(:) = wind_speed                  ! Same wind speed values to all the surface gridpoints

    end subroutine init_brom_transport
!=======================================================================================================================






!=======================================================================================================================
    subroutine do_brom_transport()

    !Executes the offline vertical transport model BROM-transport

    use calculate, only: calculate_light, calculate_phys, calculate_sed

    implicit none

    integer      :: id, idt, idf                     !time related
    integer      :: surf_flux_with_diff              !1 to include surface fluxes in diffusion update, 0 to include in bgc update
    integer      :: dynamic_w_sed                    !1 to assume dynamic advection velocities in the sediments
    integer      :: show_maxmin, show_kztCFL, show_wCFL, show_nan, show_nan_kztCFL, show_nan_wCFL     !options for runtime output to screen
    integer      :: bc_units_convert, sediments_units_convert !options for conversion of concentrations units in the sediment 
    integer      :: julianday, model_year
    real(rk)     :: cnpar                            !"Implicitness" parameter for GOTM vertical diffusion (set in brom.yaml)
    real(rk)     :: cc0                              !Resilient concentration (same for all variables)
    real(rk)     :: omega                            !angular frequency of sinusoidal forcing = 2*pi/365 rads/day
    real(rk)     :: O2stat                           !oxygen status of sediments (factor modulating the bioirrigation rate)
    real(rk)     :: a1_bioirr                        !to detect whether or not bioirrigation is activated
    real(rk), parameter :: pi=3.141592653589793_rk
    omega = 2.0_rk*pi/365.0_rk

    !Get parameters for the time-stepping and vertical diffusion / sedimentation
    cnpar = get_brom_par("cnpar")
    dynamic_w_sed = get_brom_par("dynamic_w_sed")
    cc0 = get_brom_par("cc0")
    a1_bioirr = get_brom_par("a1_bioirr")
    surf_flux_with_diff = get_brom_par("surf_flux_with_diff")
    show_maxmin = get_brom_par("show_maxmin")
    show_kztCFL = get_brom_par("show_kztCFL")
    show_wCFL = get_brom_par("show_wCFL")
    show_nan = get_brom_par("show_nan")
    show_nan_kztCFL = get_brom_par("show_nan_kztCFL")
    show_nan_wCFL = get_brom_par("show_nan_wCFL")
    bc_units_convert = get_brom_par("bc_units_convert")
    sediments_units_convert = get_brom_par("sediments_units_convert")
    idt = int(1._rk/dt)                                      !number of cycles per day
    model_year = 0
    kzti = 0.0_rk

!    Read ascii data for horizontal mixing
    hmix_rate=0.1    ! EYA
        hmix_niva_brom_bio_NO3 = get_brom_par('hmix_niva_brom_bio_NO3')    
        if (hmix_niva_brom_bio_NO3.eq.2) then
            open(20, file='spa_no3.dat')
            do k=1,k_wat_bbl
                do i=1,days_in_yr
                    read(20, *) ip,ip,cc_hmix(1,id_NO3,k,i) ! NODC data on NO3 i_water,ip,:,julianday)
                end do
            end do
            close(20)
        endif
        hmix_niva_brom_bio_O2 = get_brom_par('hmix_niva_brom_bio_O2')      
        if (hmix_niva_brom_bio_O2.eq.2) then    
            open(20, file='spa_o2.dat')
            do k=1,k_wat_bbl
                do i=1,days_in_yr
                    read(20, *) ip,ip,cc_hmix(1,id_O2,k,i) ! NODC data on NO3 i_water,ip,:,julianday)
                end do
            end do
            close(20)
        endif


    !convert bottom boundary values from 'mass/pore water ml' for dissolved and 'mass/mass' for solids into 'mass/total volume'
    if (bc_units_convert.eq.1) then
        do ip=1,par_max
            if (bctype_bottom(i_water,ip).eq.1) bc_bottom(i_water,ip) = bc_bottom(i_water,ip)/pF1(i_water,k_max,ip)
        enddo
    endif

    !Master time step loop over days
    write(*,*) "Starting time stepping"
    do i_day=0,(last_day-1)                               !BIG Cycle ("i_day"=0,...,last_day-1)
        julianday = i_day - int(i_day/days_in_yr)*days_in_yr + 1    !"julianday" (1,2,...,days_in_yr)
        if (julianday==1) model_year = model_year + 1
        write (*,'(a, i4, a, i4)') " model year:", model_year, "; julianday:", julianday


        !Calculate Izt = <PAR(z)>_24hr for this day
        call calculate_light(julianday, i_water, k_bbl_sed, k_max, par_max, hz, Eair, use_Eair, hice, cc, is_solid, rho, Izt)


        !If including ice using horizontal coordinate, set ice volume in top cell of ice column
        vv = 0.0_rk
        if (i_max.eq.2) then
            if (use_hice.eq.1) vv(1,k_min,1) = max(0.0_rk, hice(julianday))   ! i.e. vv() is an amount of solid matter in the cell
        end if


        !Set time-varying Dirichlet boundary conditions for current julianday
        do ip=1,par_max
            !Sinusoidal variations
            if (bctype_top(i_water,ip).eq.2) bc_top(i_water,ip) = bcpar_top(i_water,ip,1) + &
                bcpar_top(i_water,ip,2)*sin(omega*(julianday-bcpar_top(i_water,ip,3)))
            if (bctype_bottom(i_water,ip).eq.2) bc_bottom(i_water,ip) = bcpar_bottom(i_water,ip,1) + &
                bcpar_bottom(i_water,ip,2)*sin(omega*(julianday-bcpar_bottom(i_water,ip,3)))
            !Variations read from netcdf
            if (bctype_top(i_water,ip).eq.3) bc_top(i_water,ip) = cc_top(i_water,ip,julianday)
            if (bctype_bottom(i_water,ip).eq.3) bc_bottom(i_water,ip) = cc_bottom(i_water,ip,julianday)
        end do


        !Resend data that depend on julianday to FABM
        call fabm_link_bulk_data(model, standard_variables%temperature, t(:,:,julianday))
        call fabm_link_bulk_data(model, standard_variables%practical_salinity, s(:,:,julianday))
        if (use_hice.eq.1) then
            call fabm_link_horizontal_data(model, ice_thickness, hice(julianday:julianday))
        end if


        !Subloop over timesteps in the course of one day
        !Note: The numerical approach here is Operator Splitting with tracer transport processes assumed to be
        !      numerically more demanding than the biogeochemistry (hence freq_turb, freq_sed >= 1) (Butenschon et al., 2012)
        do id=1,idt
 !_______vertical diffusion________!
            call calculate_phys(i_water, k_max, par_max, model, cc, kzti, fick, dcc, bctype_top, bctype_bottom, bc_top, bc_bottom, &
                surf_flux, k_bbl_sed, dz, hz, kz, kz_mol, kz_bio, julianday, id_O2, K_O2s, dt, freq_turb, diff_method, cnpar, &
                surf_flux_with_diff, bioturb_across_SWI, pF1, pF2, phi_inv, is_solid, cc0)

 !_______bioirrigation_____________!
            if (a1_bioirr.gt.0.0_rk) then
                dcc = 0.0_rk
                O2stat = cc(i_water,k_bbl_sed,id_O2) / (cc(i_water,k_bbl_sed,id_O2) + K_O2s)   !Oxygen status of sediments set by O2 level just above sediment surface
                do ip=1,par_max
                    if (is_solid(ip).eq.0) then
                        !Calculate tendencies dcc
                        dcc(i_water,k_sed,ip) = O2stat*alpha(i_water,k_sed)*phi(i_water,k_sed) * &
                            (cc(i_water,k_bbl_sed,ip) - pF1(i_water,k_sed,ip)*cc(i_water,k_sed,ip)) !Schluter et al. (2000), Meile et al. (2001)
                            !Note use of factor pF1 = 1/phi to convert cc from [mass per unit total volume] to [mass per unit volume pore water]
                        dcc(i_water,k_bbl_sed,ip) = -1.0_rk * sum(dcc(i_water,k_sed,ip)*hz(k_sed)) / hz(k_bbl_sed) !Bottom cell of water column receives -1 * sum of all exchange fluxes (conservation of mass)
                        !Update concentrations
                        cc(i_water,k_sed,ip) = cc(i_water,k_sed,ip) + 86400.0_rk*dt*dcc(i_water,k_sed,ip) !Simple Euler time step for all k in the sediments (index vector k_sed)
                        cc(i_water,k_bbl_sed,ip) = cc(i_water,k_bbl_sed,ip) + 86400.0_rk*dt*dcc(i_water,k_bbl_sed,ip)
                        if (bctype_bottom(i_water,ip).gt.0) cc(i_water,k_max,ip) = bc_bottom(i_water,ip) !Reassert Dirichlet BC if required
                        cc(i_water,k_sed,ip) = max(cc0, cc(i_water,k_sed,ip)) !Impose resilient concentration
                    end if
                end do
            end if

 !_____water_biogeochemistry_______!
            dcc = 0.0_rk
            do k=1,k_max
                call fabm_do(model, i_water, i_water, k, dcc(i_water:i_water,k,:))
                !Note: We MUST pass the range "i_water:i_water" to fabm_do -- a single value "i_water" will produce compiler error
            end do
            !Add surface fluxes if treated here
            if (surf_flux_with_diff.eq.0) then
                surf_flux = 0.0_rk
                call fabm_do_surface(model, i_water, i_water, surf_flux(i_water:i_water,:))
                fick(i_water,1,:) = surf_flux(i_water,:)
                do ip=1,par_max
                    dcc(i_water,k_min,ip) = dcc(i_water,k_min,ip) + surf_flux(i_water,ip) / hz(k_min)
                end do
            end if
            if (dynamic_w_sed.eq.1) dcc_R(i_water,:,:) = dcc(i_water,:,:) !Record biological reaction terms for use in calculate_sed
            !Euler time step due to FABM biogeochemistry
            do k=1,k_max
                do ip=1,par_max
                    cc(i_water,k,ip) = cc(i_water,k,ip) + 86400.0_rk*dt*dcc(i_water,k,ip)
                end do
            end do
            !Reassert Dirichlet BCs
            do ip=1,par_max
                if (bctype_top(i_water,ip).gt.0) then
                    cc(i_water,1,ip) = bc_top(i_water,ip)
                end if
                if (bctype_bottom(i_water,ip).gt.0) then
                    cc(i_water,k_max,ip) = bc_bottom(i_water,ip)
                end if
            end do
            cc(i_water,:,:) = max(cc0, cc(i_water,:,:)) !Impose resilient concentration

 !_______Particles sinking_________!
            call calculate_sed(i_water, k_max, par_max, model, cc, wti, sink, dcc, dcc_R, bctype_top, bctype_bottom, &
                bc_top, bc_bottom, hz, dz, k_bbl_sed, wbio, w_b, u_b, julianday, dt, freq_sed, dynamic_w_sed, is_solid, &
                rho, phi1, fick, k_sed1, K_O2s, kz_bio, id_O2, dphidz_SWI, cc0)

!________Horizontal mixing_________!
            dcc = 0.0_rk
            do ip=1,par_max
                if (hmixtype(i_water,ip).gt.0) then
                    !Calculate tendency dcc (water column only)
                    if (hmixtype(i_water,ip).eq.1) dcc(i_water,:,ip) = hmix_rate(i_water,:,julianday)*(cc_hmix(i_water,ip,:,julianday)-cc(i_water,:,ip))
                    !Update concentration (water column only)
                    cc(i_water,:,ip) = cc(i_water,:,ip) + dt*dcc(i_water,:,ip) !Simple Euler time step
                    if (bctype_top(i_water,ip).gt.0) cc(i_water,1,ip) = bc_top(i_water,ip) !Reassert Dirichlet BC if required
                    cc(i_water,:,ip) = max(cc0, cc(i_water,:,ip)) !Impose resilient concentration
                end if
            end do

            !Check for NaNs (stopping if any found)
            do ip=1,par_max
                if (any(isnan(cc(i_water,1:k_max,ip)))) then
                    write(*,*) "Time step within day id = ", id
                    write(*,*) "NaN detected in concentration array, ip = ", ip
                    write(*,*) "Variable name = ", model%state_variables(ip)%name
                    if (show_nan.eq.1) write(*,*) cc(i_water,1:k_max,ip)
                    if (show_nan_kztCFL.gt.0) then
                        kztCFL(:,ip) = (kzti(i_water,2:k_max,ip)*86400.0_rk*dt/freq_turb)/(dz(1:k_max-1)**2)
                        write(*,*) "maxval(kzti(i_water,:,ip)) = ", maxval(kzti(i_water,:,ip))
                        write(*,*) "maxval(kztCFL(:,ip)) = ", maxval(kztCFL(:,ip))
                        write(*,*) "fick = ", fick(i_water,:,ip)
                        if (show_nan_kztCFL.eq.2.and.maxval(kztCFL(:,ip)).gt.0.5_rk) then
                            write(*,*) "(z_L, kz, kztCFL) where kztCFL>0.5 = "
                            do k=1,k_max-1
                                if (kztCFL(k,ip).gt.0.5_rk) write(*,*) z(k)+hz(k)/2, kzti(i_water,k+1,ip), kztCFL(k,ip)
                            end do
                        end if
                    end if
                    if (show_nan_wCFL.gt.0) then
                        wCFL(:,ip) = (abs(wti(i_water,2:k_max,ip))*86400.0_rk*dt/freq_sed)/dz(1:k_max-1)
                        write(*,*) "maxval(wti(i_water,:,ip)) = ", maxval(wti(i_water,:,ip))
                        write(*,*) "maxval(wCFL(:,ip)) = ", maxval(wCFL(:,ip))
                        write(*,*) "wti = ", wti(i_water,:,ip)
                        if (show_nan_wCFL.eq.2.and.maxval(wCFL(:,ip)).gt.1.0_rk) then
                            write(*,*) "(z_L, wti, wCFL) where wCFL>1 = "
                            do k=1,k_max-1
                                if (wCFL(k,ip).gt.1.0_rk) write(*,*) z(k)+hz(k)/2, wti(i_water,k+1,ip), wCFL(k,ip)
                            end do
                        end if
                    end if
                    stop
                end if
            end do
        end do


        !Save output to netcdf every day
        fick_per_day = 86400.0_rk * fick
        sink_per_day = 86400.0_rk * sink

        if (sediments_units_convert.eq.0) then 
            call save_netcdf(i_max, k_max, julianday, cc, t, s, kz, kzti, wti, model, z, hz, Eair, use_Eair, hice, use_hice, &
            fick_per_day, sink_per_day, ip_sol, ip_par)
        else
        !convert into observarional units in the sediments for dissolved (mass/pore water) and solids (mass/mass) with an exception for biota
            cc_out(:,:,:)=cc(:,:,:)
            do ip=1,par_max
              if (ip.ne.id_Phy.or.ip.ne.id_Het.or.ip.ne.id_Baae.or.ip.ne.id_Baan.or.ip.ne.id_Bhae.or.ip.ne.id_Bhan) then 
              cc_out(:,k_bbl_sed+1:k_max,:)=cc(:,k_bbl_sed+1:k_max,:)*pF1(:,k_bbl_sed:k_max-1,:)
              endif
            enddo
!            cc_out(:,2:k_max,:)=cc_out(:,1:k_max-1,:)   ! shift is needed for plotting with PyNCView
            call save_netcdf(i_max, k_max, julianday, cc_out, t, s, kz, kzti, wti, model, z, hz, Eair, use_Eair, hice, use_hice, &
            fick_per_day, sink_per_day, ip_sol, ip_par)
        endif

        !Save .dat files for plotting with Grapher for Sleipner for days 72 and 240
        !Note: saving to ascii every day causes an appreciable decrease in speed of execution
        if (julianday == 40) then
            call saving_state_variables_diag('output_40_day.dat', model_year, julianday, i_max, k_max, par_max, par_name, z, hz, cc, vv, t, s, kz, &
                model, extend_out = .true.)
        endif
        if (julianday == 330) then
            call saving_state_variables_diag('output_330_day.dat', model_year, julianday, i_max, k_max, par_max, par_name, z, hz, cc, vv, t, s, kz, &
                model, extend_out = .true.)
        endif
        if (julianday == 365) then
            call saving_state_variables(trim(outfile_name), model_year, julianday, i_max, k_max, par_max, par_name, z, hz, cc, vv, t, s, kz)
        endif

        !Write daily output to screen if required
        if (show_maxmin.eq.1) then
            write(*,*) "maxval(cc(i_water,:,:),1) = ", maxval(cc(i_water,:,:),1) !Good to keep an eye on max/min values for each parameter
            write(*,*) "minval(cc(i_water,:,:),1) = ", minval(cc(i_water,:,:),1)
        end if
        if (show_kztCFL.gt.0) then
            do ip=1,par_max
                kztCFL(:,ip) = (kzti(i_water,2:k_max,ip)*86400.0_rk*dt/freq_turb)/(dz(1:k_max-1)**2)
            end do
            if (show_kztCFL.eq.2) then
                write(*,*) "maxval(kzti,2) = ", maxval(kzti,2)
                write(*,*) "maxval(kztCFL,2) = ", maxval(kztCFL,2)
            else
                write(*,*) "maxval(kzti) = ", maxval(kzti)
                write(*,*) "maxval(kztCFL) = ", maxval(kztCFL)
            end if
        end if
        if (show_wCFL.gt.0) then
            do ip=1,par_max
                wCFL(:,ip) = (abs(wti(i_water,2:k_max,ip))*86400.0_rk*dt/freq_sed)/dz(1:k_max-1)
            end do
            if (show_wCFL.eq.2) then
                write(*,*) "maxval(wti(i_water,:,:),2) = ", maxval(wti(i_water,:,:),2)
                write(*,*) "maxval(wCFL,2) = ", maxval(wCFL,2)
            else
                write(*,*) "maxval(wti) = ", maxval(wti)
                write(*,*) "maxval(wCFL) = ", maxval(wCFL)
            end if
        end if
    end do

    end subroutine do_brom_transport
!=======================================================================================================================







!=======================================================================================================================
    subroutine clear_brom_transport()

    deallocate(z_w)
    deallocate(dz_w)
    deallocate(hz_w)
    deallocate(t_w)
    deallocate(s_w)
    deallocate(kz_w)
    deallocate(hmix_rate_w)
    deallocate(cc_hmix_w)
    deallocate(z)
    deallocate(dz)
    deallocate(hz)
    deallocate(t)
    deallocate(s)
    deallocate(kz)
    deallocate(hmix_rate)
    deallocate(cc_hmix)
    deallocate(kz_bio)
    deallocate(kz_mol)
    deallocate(alpha)
    deallocate(phi)
    deallocate(phi1)
    deallocate(phi_inv)
    deallocate(tortuosity)
    deallocate(w_b)
    deallocate(u_b)
    deallocate(wti)
    deallocate(pF1)
    deallocate(pF2)
    deallocate(cc)
    deallocate(cc_out)
    deallocate(dcc)
    deallocate(vv)
    deallocate(dvv)
    deallocate(fick)
    deallocate(fick_per_day)
    deallocate(sink)
    deallocate(sink_per_day)
    deallocate(wbio)
    deallocate(surf_flux)
    deallocate(bc_top)
    deallocate(bc_bottom)
    deallocate(bctype_top)
    deallocate(bctype_bottom)
    deallocate(par_name)
    deallocate(Izt)
    deallocate(pressure)
    deallocate(Eair)
    deallocate(hice)
    deallocate(cc_top)
    deallocate(cc_bottom)
    deallocate(kzti)
    deallocate(kztCFL)
    deallocate(wCFL)
    deallocate(k_wat)
    deallocate(k_sed)
    deallocate(k_sed1)
    if (diff_method.gt.0) call clean_tridiagonal()

    end subroutine clear_brom_transport
!=======================================================================================================================


    end module brom_transport
