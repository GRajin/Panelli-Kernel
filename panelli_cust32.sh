#!/bin/bash

# Export & Clean
export KBUILD_BUILD_USER="xDoge"
export KBUILD_BUILD_HOST="cust-kernel"
export ARCH=arm
export SUBARCH=arm
export CROSS_COMPILE="arm-linux-gnueabi-"
make clean
make mrproper

# Build 32it GCC
make -C $PWD O=/media/kelvin/BUILD/KERNELDIR/panelli_cust32 ARCH=arm panelli_defconfig
make -C $PWD O=/media/kelvin/BUILD/KERNELDIR/panelli_cust32 ARCH=arm -j6

# Clean 32bit GCC
#make O=/media/kelvin/BUILD/KERNELDIR/panelli_cust32 clean
#make O=/media/kelvin/BUILD/KERNELDIR/panelli_cust32 mrproper





# Build 32bit DEBUG GCC
#make -C $PWD O=/media/kelvin/BUILD/KERNELDIR/panelli_cust32_DEBUG ARCH=arm CONFIG_DEBUG_SECTION_MISMATCH=y panelli_debug_defconfig
#make -C $PWD O=/media/kelvin/BUILD/KERNELDIR/panelli_cust32_DEBUG ARCH=arm CONFIG_DEBUG_SECTION_MISMATCH=y -j6
