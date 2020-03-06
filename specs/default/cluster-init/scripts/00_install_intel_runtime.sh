#!/bin/bash
set -e
set -x
# 
# yum install -y gcc
# 
# INTEL_VER=2016.3-210
# # The ordering of the files follows dependencies.
# files="intel-psxe-common-runtime-${INTEL_VER}.noarch.rpm intel-comp-common-runtime-${INTEL_VER}.noarch.rpm intel-comp-runtime-64-${INTEL_VER}.x86_64.rpm intel-openmp-runtime-64-16.0.3-210.x86_64.rpm intel-mpi-runtime-64-${INTEL_VER}.x86_64.rpm intel-ifort-common-runtime-${INTEL_VER}.noarch.rpm intel-ifort-runtime-64-${INTEL_VER}.x86_64.rpm intel-icc-common-runtime-${INTEL_VER}.noarch.rpm intel-icc-runtime-64-${INTEL_VER}.x86_64.rpm"
# cd /tmp
# for f in $files; do
#   jetpack download $f /tmp/
#   rpm -i $f
# done

touch /etc/sgi-release
