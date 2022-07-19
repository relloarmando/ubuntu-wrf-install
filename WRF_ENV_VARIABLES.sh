#!/bin/bash

# HOME_DIR
export HOMEDIR=/home/wsl-ubuntu

# WRF COMPILERS ENV
export CC=gcc
export CXX=g++
export FC=gfortran
export FCFLAGS=-m64
export F77=gfortran
export FFLAGS=-m64

# NETCDF ENV
export WRFLIBS=$HOMEDIR/LIBS_WRF
export NETCDF_VER=3.6.3
export NETCDF=$WRFLIBS/netcdf-$NETCDF_VER
export NETCDF_LIB=$NETCDF/lib
export NETCDF_INC=$NETCDF/include
export PATH=$WRFLIBS/netcdf/bin:$PATH
CPPFLAGS=-I$HDF5_DIR/include LDFLAGS=-L$HDF5_DIR/lib

# WRF ENV
export JASPERLIB=/usr/local
export JASPERINC=/usr/local
export WRF_EM_CORE=1
export WRF_NMM_CORE=0
export WRF_CHEM=0
export WRF_KPP=0
export WRFIO_NCD_LARGE_FILE_SUPPORT=1
export LD_LIBRARY_PATH=/usr/local/lib

# NCARG-NCL ENV
export NCARG_ROOT=/usr/bin/ncl
export PATH=$NCARG_ROOT/bin:$PATH
