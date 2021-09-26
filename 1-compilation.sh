cd batocera.linux
mkdir output
cd output
mkdir cha
cd ..
make O=$PWD/output/cha BR2_EXTERNAL=$PWD -C $PWD/buildroot batocera-cha_defconfig
cd output/cha
make source
make
