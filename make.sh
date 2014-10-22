export ARCH=arm
unset CROSS_COMPILE
#export CROSS_COMPILE=/opt/gcc-4.8-linaro/bin/arm-cortex_a15-linux-gnueabi-
#export CROSS_COMPILE=/opt/gcc-4.7-linaro/bin/arm-cortex_a15-linux-gnueabi-
export CROSS_COMPILE=/home/hafizan/opt/arm-eabi-4.8-sm/bin/arm-eabi-
#echo "Cleaning old craps..."
make distclean
export KBUILD_BUILD_USER=hafizan
export KBUILD_BUILD_HOST="hanafi"
export LOCALVERSION="-Aqualogic-v2.4-LTest"
#echo "Copy backup config..."
#cp najmi-mako-config .config
make mako_defconfig
make menuconfig
#echo "Begin compile..."
make -j8
