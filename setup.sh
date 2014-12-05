#!/usr/bin/env bash

# don't set as -r otherwise next runs of setup.sh will fail
declare -x BRANCH="dizzy"

git clone git://git.yoctoproject.org/poky -b ${BRANCH}
(cd poky && git pull && git checkout ${BRANCH})
#git clone git://git.yoctoproject.org/meta-intel -b ${BRANCH}
#(cd meta-intel && git pull && git checkout ${BRANCH})

export TEMPLATECONF=`pwd`/meta-iid/conf
source ./poky/oe-init-build-env build
# some python magic comes here

#echo "BBLAYERS+=\"`pwd`/meta-intel\"" >> conf/bblayers.conf
