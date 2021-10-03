git clone https://github.com/batocera-linux/batocera.linux.git
git submodule init
git submodule update
# Currently this is done mainly to customise shaders used for scanlines for ones the CHA can handle
cp -rfv ./batocera.linux-dir-customisation/* ./batocera.linux/