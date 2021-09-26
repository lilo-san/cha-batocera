# Delete libretro emulators an copy fbneo back
rm -rf ./batocera.linux/output/cha/target/usr/lib/libretro/*
cp ./cha-emmc/usr/lib/libretro/fbneo_libretro.so ./batocera.linux/output/cha/target/usr/lib/libretro/fbneo_libretro.so

# Delete rom related files that will not be used
rm -rf ./batocera.linux/output/cha/target/usr/share/batocera/datainit/roms/*
mkdir ./batocera.linux/output/cha/target/usr/share/batocera/datainit/roms/fbneo
touch ./batocera.linux/output/cha/target/usr/share/batocera/datainit/roms/fbneo/sf2.7z
rm -rf ./batocera.linux/output/cha/target/usr/share/batocera/datainit/bios/*
# Fix buggy emulator launcher
cp ./cha-emmc/usr/lib/python3.9/site-packages/configgen/emulatorlauncher.py ./batocera.linux/output/cha/target/usr/lib/python3.9/site-packages/configgen/emulatorlauncher.py
# Customise theme
rm -rf ./batocera.linux/output/cha/target/usr/share/batocera/music/*
cp -r ./cha-emmc/usr/share/emulationstation/themes/es-theme-carbon/* ./batocera.linux/output/cha/target/usr/share/emulationstation/themes/es-theme-carbon
cp ./cha-emmc/SHARE/splash/boot-logo.png ./batocera.linux/output/cha/target/usr/share/batocera/splash/boot-logo.png