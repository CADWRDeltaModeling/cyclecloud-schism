#!/bin/bash

set -x
set -e

SCHISM_TAR=schism-trunk.tar.bz2

jetpack download $SCHISM_TAR /tmp/

cd /opt
tar xjf /tmp/$SCHISM_TAR

cat <<EOF > /etc/profile.d/schism.sh
#!/bin/bash
source /opt/intel/psxe_runtime/linux/bin/psxevars.sh intel64
export SZIP_DIR=/opt/szip/2.1.1/intel
export HDF5_DIR=/opt/hdf5/1.10.5/intel
export NETCDF_C_DIR=/opt/netcdf-c/4.6.2/intel
export NETCDF_FORTRAN_DIR=/opt/netcdf-fortran/4.4.4/intel
export LD_LIBRARY_PATH=\$NETCDF_FORTRAN_DIR/lib:\$NETCDF_C_DIR/lib:\$HDF5_DIR/lib:\$SZIP_DIR/lib:\$LD_LIBRARY_PATH
export PATH=/opt/schism/trunk:\$PATH
EOF
chmod 755 /etc/profile.d/schism.sh

