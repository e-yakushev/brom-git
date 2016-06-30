# BROM
## About
1-D pelagic-benthic model considering water column and upper cmc of the sediment in one model domain.

## Supported compilers:
- gfortran (part of GCC)
- Intel Fortran Compiler

## How to use
At first you must download [FABM] and do all prerequisites it
needs, then:

### Linux(bash shell):
1. Download BROM

`$ git clone https://github.com/e-yakushev/brom-git.git brom-git`

2. Add FABMDIR and NetCDF_ROOT environment variables

For example you can add to ~/.bashrc current lines:

```
export FABMDIR='/path/to/FABM'
export NetCDF_ROOT='/path/to/NetCDF/bin'
```

You may also need in case of compiling NetCDF libraries from source not to standart folder add 2 more lines:

```
export NCDIR='/path/to/netcdf'
export LD_LIBRARY_PATH=$NCDIR/lib:$LD_LIBRARY_PATH
```
3. Make a build 

Enter brom-git folder and execute `build_brom.sh`

or

You can manually greate build folder, copy to there files from `/data` folder, execute command from your build folder: 

`cmake path/to/BROM/code -DFABM_BASE=$FABMDIR`

4. Compile the code

From build folder execute `make`

5. Run BROM

From build folder execute `./brom`

### Windows:

[FABM]:http://fabm.net
