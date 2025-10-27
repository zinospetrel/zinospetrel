#!/bin/bash
# ====================================
#          _  Web+Gopher Kiosk Network 
#  __ __ _(_)__ _ ___ ___ _ _  ╋╋┓┏┓┏┓    
#  \ V  V / / _` / -_) _ \ ' \ ┃┃┃┫ ┗┓ 
#   \_/\_/|_\__, \___\___/_||_|╋╋┛┗┛┗┛ 
#    P-01    |___/ V1: 2025.11.09_17.00
# ====================================
#     Non-touch Kiosk for Android
#   -------------------------------
# Copyright @ 2025 Dinh Thoai Tran <zinospetrel@proton.me>
# All rights reserved.
#   -------------------------------
# This script is runned as:
# > wget -qO- --no-cache https://tinyurl.com/zpd-wks-01 | bash
# Redistribute it in any other form is not allowed.
# ====================================

WRK_DIR=$(pwd -P)
PID="$$"
CMD="$1"
ME_FL="$WRK_DIR/wks-01.bh"
HOME_DIR="`cd ~ && pwd`"

if [ "$CMD" == "" ]; then
  echo -n -e "\u001b[2J"
  echo -e "===================================="
  echo -e "         _  Web+Gopher Kiosk Network" 
  echo -e " __ __ _(_)__ _ ___ ___ _ _  ╋╋┓┏┓┏┓"    
  echo -e " \\ V  V / / _\` / -_) _ \\ ' \\ ┃┃┃┫ ┗┓" 
  echo -e "  \\_/\\_/|_\\__, \\___\\___/_||_|╋╋┛┗┛┗┛" 
  echo -e "   P-01    |___/ V1: 2025.11.09_17.00"
  echo -e "===================================="
  echo -e "    Non-touch Kiosk for Android"
  echo -e "===================================="
  echo -e ""
  echo -e "===================================="
  echo -e "              CLONE                 "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $ME_FL "
  echo -e " "
  
  mkdir -p $HOME_DIR/wgb
  chmod u+x $HOME_DIR/wgb
  chmod u+r $HOME_DIR/wgb
  chmod g+x $HOME_DIR/wgb
  chmod g+r $HOME_DIR/wgb
  chmod o+x $HOME_DIR/wgb
  chmod o+r $HOME_DIR/wgb

  curl -o wks-01.bh -sL -H 'Cache-Control: no-cache, no-store' --noproxy "*" "https://tinyurl.com/zpd-wks-01"
  chmod u+x $ME_FL
  chmod u+r $ME_FL
  chmod g+x $ME_FL
  chmod g+r $ME_FL
  chmod o+x $ME_FL
  chmod o+r $ME_FL

  cp -f $ME_FL $HOME_DIR/wgb/
  chmod u+w $HOME_DIR/wgb/wks-01.bh
  chmod u+r $HOME_DIR/wgb/wks-01.bh
  chmod u+x $HOME_DIR/wgb/wks-01.bh
  chmod g-x $HOME_DIR/wgb/wks-01.bh
  chmod g+r $HOME_DIR/wgb/wks-01.bh
  chmod o-x $HOME_DIR/wgb/wks-01.bh
  chmod o+r $HOME_DIR/wgb/wks-01.bh
  
  curl -o wks01.dat -sL -H 'Cache-Control: no-cache, no-store' --noproxy "*" "https://github.com/zinospetrel/zinospetrel/raw/refs/heads/main/softs/wks/wks-01/wks01.dat"

  mv "wks01.dat" "wks01.zip"
  chmod u+w "wks01.zip"
  chmod u+r "wks01.zip"
  chmod u-x "wks01.zip"
  chmod g+r "wks01.zip"
  chmod o+r "wks01.zip"
  
  unzip -P "akpnrsuhg" "wks01.zip"

  cp wks01/wigeon#ks-01-* $HOME_DIR/wgb/

  rm -rf wks01

  rm -f wks01.zip

  chmod u+w $HOME_DIR/wgb/wigeon#ks-01-a
  chmod u+r $HOME_DIR/wgb/wigeon#ks-01-a
  chmod u+x $HOME_DIR/wgb/wigeon#ks-01-a
  chmod g-x $HOME_DIR/wgb/wigeon#ks-01-a
  chmod g+r $HOME_DIR/wgb/wigeon#ks-01-a
  chmod o-x $HOME_DIR/wgb/wigeon#ks-01-a
  chmod o+r $HOME_DIR/wgb/wigeon#ks-01-a

  chmod u+w $HOME_DIR/wgb/wigeon#ks-01-x
  chmod u+r $HOME_DIR/wgb/wigeon#ks-01-x
  chmod u+x $HOME_DIR/wgb/wigeon#ks-01-x
  chmod g-x $HOME_DIR/wgb/wigeon#ks-01-x
  chmod g+r $HOME_DIR/wgb/wigeon#ks-01-x
  chmod o-x $HOME_DIR/wgb/wigeon#ks-01-x
  chmod o+r $HOME_DIR/wgb/wigeon#ks-01-x

  cd $HOME_DIR/wgb && ln -s wigeon#ks-01-a wks01a_help
  cd $HOME_DIR/wgb && ln -s wigeon#ks-01-a wks01a_install
  cd $HOME_DIR/wgb && ln -s wigeon#ks-01-a wks01a_uninstall
  
  cd $WRK_DIR && exec $ME_FL install
  exit
fi

if [ "$CMD" == "install" ]; then
  echo -n -e "\u001b[2J"
  echo -e "===================================="
  echo -e "         _  Web+Gopher Kiosk Network" 
  echo -e " __ __ _(_)__ _ ___ ___ _ _  ╋╋┓┏┓┏┓"    
  echo -e " \\ V  V / / _\` / -_) _ \\ ' \\ ┃┃┃┫ ┗┓" 
  echo -e "  \\_/\\_/|_\\__, \\___\\___/_||_|╋╋┛┗┛┗┛" 
  echo -e "   P-01    |___/ V1: 2025.11.09_17.00"
  echo -e "===================================="
  echo -e "    Non-touch Kiosk for Android"
  echo -e "===================================="
  echo -e ""
  echo -e "===================================="
  echo -e "              INSTALL               "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $ME_FL "
  echo -e " "

  pkg update -y && pkg upgrade -y

  pkg install -y proot-distro

  mkdir -p $HOME_DIR/wgb
  chmod u+x $HOME_DIR/wgb
  chmod u+r $HOME_DIR/wgb
  chmod g+x $HOME_DIR/wgb
  chmod g+r $HOME_DIR/wgb
  chmod o+x $HOME_DIR/wgb
  chmod o+r $HOME_DIR/wgb
  
  curl -o $HOME_DIR/wgb/qemu-x86_64-static -sL -H 'Cache-Control: no-cache, no-store' --noproxy "*" https://github.com/multiarch/qemu-user-static/releases/download/v7.2.0-1/qemu-x86_64-static # (Adjust version as needed)
  chmod u+w $HOME_DIR/wgb/qemu-x86_64-static
  chmod u+r $HOME_DIR/wgb/qemu-x86_64-static
  chmod u+x $HOME_DIR/wgb/qemu-x86_64-static
  chmod g-x $HOME_DIR/wgb/qemu-x86_64-static
  chmod g+r $HOME_DIR/wgb/qemu-x86_64-static
  chmod o-x $HOME_DIR/wgb/qemu-x86_64-static
  chmod o+r $HOME_DIR/wgb/qemu-x86_64-static

  echo 'export PATH="$HOME/wgb:$PATH"' >> ~/.bashrc
  source ~/.bashrc
	
  echo "DISTRO_ARCH=x86_64" > $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo "PROOT_DISTRO_DEBUG=1" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo "PROOT_DISTRO_QEMU_BINARY=$HOME/wgb/qemu-x86_64-static" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo -e "DISTRO_NAME=\"Wigeon#KS-01 on Ubuntu (24.04.3 LTS)\"" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo -e "DISTRO_COMMENT=\"24.04.3 LTS (Noble).\"" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo -e "TARBALL_URL['x86_64']=\"https://github.com/termux/proot-distro/releases/download/v4.11.0/ubuntu-noble-x86_64-pd-v4.11.0.tar.xz\"" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo -e "TARBALL_SHA256['x86_64']=\"f024b1e17413737d8b385d22736d2e3eb2af9ba665fdbda1277bcca8f397e5a2\"" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo -e "
distro_setup() {
	echo -e \"Configure en_US.UTF-8 locale...\"
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd dpkg-reconfigure locales
	echo -e \"Configure en_US.UTF-8 locale... -- Finished.\"
}
"  >> $PREFIX/etc/proot-distro/zpd-wks-01.sh

  pkg install termux-api -y

  termux-open-url "https://play.google.com/store/apps/details?id=com.iiordanov.freebVNC"

  termux-open-url "https://play.google.com/store/apps/details?id=com.gazlaws.codeboard"

  proot-distro install zpd-wks-01

  proot-distro copy $HOME_DIR/wgb/wks-01.bh zpd-wks-01:/root/wks-01.bh

  proot-distro copy $HOME_DIR/wgb/wks-01.bh zpd-wks-01:/bin/wks-01.bh

  proot-distro copy $HOME_DIR/wgb/wigeon#ks-01-x zpd-wks-01:/bin/wigeon#ks-01-x

  proot-distro login zpd-wks-01 -- /root/wks-01.bh configure
  exit
fi

if [ "$CMD" == "uninstall" ]; then
  echo -n -e "\u001b[2J"
  echo -e "===================================="
  echo -e "         _  Web+Gopher Kiosk Network" 
  echo -e " __ __ _(_)__ _ ___ ___ _ _  ╋╋┓┏┓┏┓"    
  echo -e " \\ V  V / / _\` / -_) _ \\ ' \\ ┃┃┃┫ ┗┓" 
  echo -e "  \\_/\\_/|_\\__, \\___\\___/_||_|╋╋┛┗┛┗┛" 
  echo -e "   P-01    |___/ V1: 2025.11.09_17.00"
  echo -e "===================================="
  echo -e "    Non-touch Kiosk for Android"
  echo -e "===================================="
  echo -e ""
  echo -e "===================================="
  echo -e "              UNINSTALL             "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $ME_FL "
  echo -e " "
  
  proot-distro remove zpd-wks-01 
  exit
fi

if [ "$CMD" == "configure" ]; then
  chmod u+w /bin/wigeon#ks-01-x
  chmod u+r /bin/wigeon#ks-01-x
  chmod u+x /bin/wigeon#ks-01-x
  chmod g-x /bin/wigeon#ks-01-x
  chmod g+r /bin/wigeon#ks-01-x
  chmod o-x /bin/wigeon#ks-01-x
  chmod o+r /bin/wigeon#ks-01-x
  cd /root && exec /bin/wigeon#ks-01-x
  exit
fi

if [ "$CMD" == "start" ]; then
  cd /root && exec /bin/wks01x_start
  exit
fi

if [ "$CMD" == "stop" ]; then
  cd /root && exec /bin/wks01x_stop
  exit
fi
