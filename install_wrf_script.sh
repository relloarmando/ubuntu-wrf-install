#!/bin/bash
# COMPILERS INSTALL
apt-get update
apt-get install build-essential
apt install csh gawk
apt-get install perl
apt-get install gfortran
apt-get install build-essentials
apt-get install autotools
apt-get install autoconf

# LOAD Environment Variables
source WRF_ENV_VARIABLES.sh


# INSTALL MANDATORY NETCDF LIB
mkdir $WRFLIBS
tar xzvf LIBS_SOURCE/netcdf-$NETCDF_VER.tar.gz -C $WRFLIBS
cd $NETCDF
./configure --prefix=$NETCDF --disable-dap --disable-netcdf-4 --disable-shared
make
sudo make install
export PATH=$NETCDF/bin:$PATH
export NETCDF=$NETCDF

# Download WRF Source code from repo
cd $HOME
git clone -b master https://github.com/wrf-model/WRF.git
cd WRF/


./configure


