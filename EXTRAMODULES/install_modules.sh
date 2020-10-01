#!/bin/zsh

#
# Linux kernel and extramodules support for linux58-XLEAR
# (https://github.com/emaballarin/linux58-XLEAR)
#
# Maintainer: Emanuele Ballarin <emanuele@ballarin.cc>
#
# Originally ported from the 'Clearer Manjaro' kernel stack
# (https://github.com/emaballarin/clearer-manjaro-kernel |
#  https://github.com/emaballarin/clearer-manjaro-kernel-nvidia |
#  https://github.com/emaballarin/clearer-manjaro-kernel-acpi-call)
#
# Builtin   extramodules: (a) wireguard, (b) Oracle VirtualBox Guest
# Supported extramodules: (1) nvidia,    (2) acpi_call.
#

# LINUX:
_LINUXVRS="58"
_LINUXVRS_DOT="5.8"
_LINUXPREFIX="XLEAR"
_SMALLCAP_LINUXPREFIX="xlear"

# NVIDIA VERSION:
_NVVER="450"
_NVSVER="66"

# ACPI_CALL VERSION:
_ACPICVER="1.1.0"


####################
## Set some flags ##
####################
unset CXXFLAGS
unset CFFLAGS
unset CFLAGS
unset FFLAGS
unset LDFLAGS
export CXXFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -Wformat -Wformat-security -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -fno-semantic-interposition -ffat-lto-objects -fno-trapping-math -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native -fvisibility-inlines-hidden -Wl,--enable-new-dtags"
export CFFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -malign-data=abi -fno-semantic-interposition -ftree-vectorize -ftree-loop-vectorize -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native"
export CFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -Wformat -Wformat-security -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -fno-semantic-interposition -ffat-lto-objects -fno-trapping-math -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native"
export FFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -malign-data=abi -fno-semantic-interposition -ftree-vectorize -ftree-loop-vectorize -Wl,--enable-new-dtags -march=native"
export LDFLAGS="-Wl,-O3,--sort-common,--as-needed,-z,relro,-z,now"

##################
## Get the code ##
##################

# Export variables
export XLEAR_TMPDIR="$(pwd)/TMPDIR"
export XLEAR_PKGS="$(pwd)/PKGS"

# Prepare build/install structure
mkdir -p "$XLEAR_TMPDIR"
mkdir -p "$XLEAR_PKGS"

# Clean-up (eventual) previous build
cd "$XLEAR_TMPDIR"
rm -R -f ./*

# Clone relevant git repositories
cd "$XLEAR_TMPDIR"

#git clone --recursive https://github.com/emaballarin/linux58-XLEAR.git
git clone --recursive https://gitlab.manjaro.org/packages/extra/linux${_LINUXVRS}-extramodules/nvidia-${_NVVER}xx.git
git clone --recursive https://gitlab.manjaro.org/packages/extra/linux${_LINUXVRS}-extramodules/acpi_call.git
git clone --recursive https://gitlab.manjaro.org/packages/extra/linux${_LINUXVRS}-extramodules/virtualbox-modules.git

####################
## Patch the code ##
####################

# linux${_LINUXPREFIX}
# Nothing to do!

# nvidia-${_NVVER}xx
cd "$XLEAR_TMPDIR/nvidia-${_NVVER}xx"
cp ../../emaballarin_nvopt.patch ./
git apply ./emaballarin_nvopt.patch
cp -f ../../NVIDIA-Linux-x86_64-${_NVVER}.${_NVSVER}-no-compat32.run ./
cp ../../emaballarin_nvperformance.patch ./
sed -i "s/# patches here/patch -Np1 -i ..\/..\/emaballarin_nvperformance.patch/g" ./PKGBUILD
mv ./nvidia.install ./nvidia-${_SMALLCAP_LINUXPREFIX}.install
sed -i "s/_linuxprefix=.*/_linuxprefix=linux58-xlear/g" ./PKGBUILD
sed -i "s/_extramodules=.*/_extramodules=extramodules-${_LINUXVRS_DOT}-${_LINUXPREFIX}/g" ./PKGBUILD
sed -i "s/install=\$_pkgname\.install.*/install=nvidia-${_SMALLCAP_LINUXPREFIX}\.install/g" ./PKGBUILD
sed -i "s/nvidia\.install/nvidia-${_SMALLCAP_LINUXPREFIX}\.install/g" ./PKGBUILD

# acpi_call
cd "$XLEAR_TMPDIR/acpi_call"
cp ../../emaballarin_acpiopt.patch ./
git apply ./emaballarin_acpiopt.patch
cp -f ../../v1.1.0.tar.gz ./
mv ./acpi_call.install ./acpi_call-${_SMALLCAP_LINUXPREFIX}.install
sed -i "s/_linuxprefix=.*/_linuxprefix=linux58-xlear/g" ./PKGBUILD
sed -i "s/_extramodules=.*/_extramodules=extramodules-${_LINUXVRS_DOT}-${_LINUXPREFIX}/g" ./PKGBUILD
sed -i "s/install=\$_pkgname\.install.*/install=acpi_call-${_SMALLCAP_LINUXPREFIX}\.install/g" ./PKGBUILD
sed -i "s/acpi_call\.install/acpi_call-${_SMALLCAP_LINUXPREFIX}\.install/g" ./PKGBUILD

# Virtualbox & co.
cd "$XLEAR_TMPDIR/virtualbox-modules"
cp ../../vbomni.patch ./
git apply ./vbomni.patch
mv ./virtualbox-host-modules.install ./virtualbox-host-modules-${_SMALLCAP_LINUXPREFIX}.install
mv ./virtualbox-guest-modules.install ./virtualbox-guest-modules-${_SMALLCAP_LINUXPREFIX}.install
#sed -i "s/_linuxprefix=.*/_linuxprefix=linux58-xlear/g" ./PKGBUILD
#sed -i "s/_extramodules=.*/_extramodules=extramodules-${_LINUXVRS_DOT}-${_LINUXPREFIX}/g" ./PKGBUILD
#sed -i "s/install=virtualbox-host-modules\.install.*/install=virtualbox-host-modules-${_SMALLCAP_LINUXPREFIX}\.install/g" ./PKGBUILD
#sed -i "s/install=virtualbox-guest-modules\.install.*/install=virtualbox-guest-modules-${_SMALLCAP_LINUXPREFIX}\.install/g" ./PKGBUILD
#sed -i "s/virtualbox-host-modules\.install\"/virtualbox-host-modules-${_SMALLCAP_LINUXPREFIX}\.install\"/g" ./PKGBUILD
#sed -i "s/virtualbox-guest-modules\.install\"/virtualbox-guest-modules-${_SMALLCAP_LINUXPREFIX}\.install\"/g" ./PKGBUILD
#sed -i "s/package_linux58-virtualbox-host-modules/package_linux58-xlear-virtualbox-host-modules/g" ./PKGBUILD
#sed -i "s/package_linux58-virtualbox-guest-modules/package_linux58-xlear-virtualbox-guest-modules/g" ./PKGBUILD
sed -i "s/MANJARO/XLEAR/g" ./virtualbox-host-modules-${_SMALLCAP_LINUXPREFIX}.install
sed -i "s/MANJARO/XLEAR/g" ./virtualbox-guest-modules-${_SMALLCAP_LINUXPREFIX}.install

####################
## Build packages ##
####################

#cd "$XLEAR_TMPDIR/linux${_LINUXVRS}-${_LINUXPREFIX}"
#makepkg -Csfi --noconfirm

cd "$XLEAR_TMPDIR/nvidia-${_NVVER}xx"
makepkg -Csf --noconfirm

cd "$XLEAR_TMPDIR/acpi_call"
makepkg -Csf --noconfirm

cd "$XLEAR_TMPDIR/virtualbox-modules"
makepkg -Csf --noconfirm

sudo pacman -R virtualbox-guest-dkms virtualbox-host-dkms --noconfirm
sudo pacman -R virtualbox-guest-dkms virtualbox-guest-dkms --noconfirm
echo "The PREVIOUS TWO lines MIGHT have returned an error. If so, it's expected."

#####################
## Deploy packages ##
#####################

# Ask if deployment/install is really wanted
echo ' '
bash -c "read -p 'Was the whole build process successful? Press [ENTER] to deploy and install!'"
echo ' '

# Remove (eventually) previously built packages
rm -R -f "$XLEAR_PKGS/*"

#cd "$XLEAR_TMPDIR/clearer-manjaro-kernel"
#cp ./*.pkg.tar.* "$XLEAR_PKGS"

cd "$XLEAR_TMPDIR/clearer-manjaro-kernel-nvidia"
cp ./*.pkg.tar.* "$XLEAR_PKGS"

cd "$XLEAR_TMPDIR/acpi_call"
cp ./*.pkg.tar.* "$XLEAR_PKGS"

######################
## Install packages ##
######################
cd "$XLEAR_PKGS"
sudo pacman -U ./* --noconfirm
trizen -S wireguard-tools --noconfirm
sudo mkinitcpio -P
sudo update-grub

# Ask for file cleanup
echo ' '
bash -c "read -p 'If the installation was successful, press [ENTER] to perform a file cleanup. Hit [CTRL]+[C] to exit without cleanup.'"
echo ' '

rm -R -f "$XLEAR_TMPDIR"
rm -R -f "$XLEAR_PKGS"
