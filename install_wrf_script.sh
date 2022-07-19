#!/bin/bash

# Ask for sudo 
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# COMPILERS INSTALL
sudo apt-get -y update
apt-get -y install build-essential
apt -y install csh gawk
apt-get -y install perl
apt-get -y install gfortran
apt-get -y install build-essentials
apt-get -y install autotools
apt-get -y install autoconf

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
# git clone -b master https://github.com/wrf-model/WRF.git
cd WRF/


./configure


