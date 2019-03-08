#!/bin/bash
set -e
set -x
rpm --import https://yum.repos.intel.com/2019/setup/RPM-GPG-KEY-intel-psxe-runtime-2019
rpm -Uhv https://yum.repos.intel.com/2019/setup/intel-psxe-runtime-2019-reposetup-1-0.noarch.rpm
yum install -y intel-psxe-runtime
