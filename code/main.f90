! Original author(s): Evgeniy Yakushev, Shamil Yakubov, 
!                     Elizaveta Protsenko, Phil Wallhead
!-----------------------------------------------------------------------
! Copyright under the GNU Public License - www.gnu.org
!-----------------------------------------------------------------------
!This file is part of Bottom RedOx Model (BROM, v.1.0).
!
!BROM is free software: you can redistribute it and/or modify
!it under the terms of the GNU General Public License as published by
!the Free Software Foundation, either version 2 of the License, or
!(at your option) any later version.
!
!BROM is distributed in the hope that it will be useful,
!but WITHOUT ANY WARRANTY; without even the implied warranty of
!MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
!GNU General Public License for more details.
!
!You should have received a copy of the GNU General Public License
!along with BROM.  If not, see <http://www.gnu.org/licenses/>.    
    
    
    program main
    
    use brom_transport, only: init_brom_transport, do_brom_transport, clear_brom_transport

    !initializing, writing from gotm data and fabm.yaml included
    call init_brom_transport()
    !main cycle
    call do_brom_transport()
    !clear all
    call clear_brom_transport()

    end program main