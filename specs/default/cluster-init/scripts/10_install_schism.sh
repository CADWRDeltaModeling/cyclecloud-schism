#!/bin/bash

set -x
set -e

yum install -y netcdf-fortran

SCHISM_TAR=schism.0.9.2.tar.gz

jetpack download $SCHISM_TAR /tmp/

cd /opt
tar xzf /tmp/$SCHISM_TAR

cat <<EOF > /etc/profile.d/schism.sh
#!/bin/bash
source /opt/intel/psxe_runtime/linux/bin/psxevars.sh intel64
export PATH=/opt/schism/trunk_intel2016_mpi_only:\$PATH
EOF
chmod 755 /etc/profile.d/schism.sh

