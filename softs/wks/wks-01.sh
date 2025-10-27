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

  curl -o $ME_FL -sL -H 'Cache-Control: no-cache, no-store' --noproxy "*" "https://tinyurl.com/zpd-wks-01"
  chmod u+x $ME_FL
  chmod u+r $ME_FL
  chmod g+x $ME_FL
  chmod g+r $ME_FL
  chmod o+x $ME_FL
  chmod o+r $ME_FL

  cp -f $ME_FL $HOME_DIR/wgb/wks-01.bh
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

  chmod u+w $HOME_DIR/wgb/wigeon#ks-01-x
  chmod u+r $HOME_DIR/wgb/wigeon#ks-01-x
  chmod u+x $HOME_DIR/wgb/wigeon#ks-01-x
  chmod g-x $HOME_DIR/wgb/wigeon#ks-01-x
  chmod g+r $HOME_DIR/wgb/wigeon#ks-01-x
  chmod o-x $HOME_DIR/wgb/wigeon#ks-01-x
  chmod o+r $HOME_DIR/wgb/wigeon#ks-01-x
  
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

  pkg update -y

  pkg install -y --no-install-recommends proot-distro qemu-user-x86-64 termux-api

  mkdir -p $HOME_DIR/wgb
  chmod u+x $HOME_DIR/wgb
  chmod u+r $HOME_DIR/wgb
  chmod g+x $HOME_DIR/wgb
  chmod g+r $HOME_DIR/wgb
  chmod o+x $HOME_DIR/wgb
  chmod o+r $HOME_DIR/wgb
  
  echo 'export PATH="$HOME/wgb:$PATH"' >> $HOME_DIR/.bashrc
  source $HOME_DIR/.bashrc
	
  echo "DISTRO_ARCH=x86_64" > $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo "PROOT_DISTRO_DEBUG=0" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo "PROOT_DISTRO_QEMU_BINARY=qemu-user-x86-64" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo -e "DISTRO_NAME=\"Wigeon#KS-01 on Ubuntu (24.04.3 LTS)\"" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo -e "DISTRO_COMMENT=\"24.04.3 LTS (Noble).\"" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo -e "TARBALL_URL['x86_64']=\"https://github.com/termux/proot-distro/releases/download/v4.11.0/ubuntu-noble-x86_64-pd-v4.11.0.tar.xz\"" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo -e "TARBALL_SHA256['x86_64']=\"f024b1e17413737d8b385d22736d2e3eb2af9ba665fdbda1277bcca8f397e5a2\"" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo -e "
distro_setup() {
	echo -e \"Setting up distro ...\"
}
"  >> $PREFIX/etc/proot-distro/zpd-wks-01.sh

  termux-open-url "https://play.google.com/store/apps/details?id=com.iiordanov.freebVNC"

  termux-open-url "https://play.google.com/store/apps/details?id=com.gazlaws.codeboard"

  proot-distro install zpd-wks-01

  proot-distro copy zpd-wks-01:/root/.bashrc $HOME_DIR/wgb/.bashrc

  cat > $HOME_DIR/wgb/.bashrc <<- EOF
    apt update -y && apt full-upgrade -y
    apt install sudo nano wget openssl git -y
    exit
EOF

  proot-distro copy zpd-wks-01:/root/.bashrc $HOME_DIR/wgb/.bashrc

  proot-distro login zpd-wks-01

  rm -f $HOME_DIR/wgb/.bashrc
  
  cat > $HOME_DIR/wgb/.bashrc <<- EOF
        useradd -m \
            -G sudo \
            -d /home/wks01 \
            -k /etc/skel \
            -s /bin/bash \
            wks01
        echo wks01 ALL=\(root\) ALL > /etc/sudoers.d/wks01
        chmod 0440 /etc/sudoers.d/wks01
        echo "wks01 ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
        exit
EOF

  proot-distro copy zpd-wks-01:/root/.bashrc $HOME_DIR/wgb/.bashrc

  proot-distro login zpd-wks-01

  rm -f $HOME_DIR/wgb/.bashrc

  cat > $HOME_DIR/wgb/.bashrc <<- EOF
EOF

  proot-distro copy $HOME_DIR/.bashrc zpd-wks-01:/root/.bashrc

  proot-distro copy $HOME_DIR/wgb/wks-01.bh zpd-wks-01:/root/wks-01.bh

  proot-distro copy $HOME_DIR/wgb/wks-01.bh zpd-wks-01:/bin/wks-01.bh

  proot-distro copy $HOME_DIR/wgb/wigeon#ks-01-x zpd-wks-01:/bin/wigeon#ks-01-x

  rm -f $HOME_DIR/wgb/.bashrc
  
  cat > $HOME_DIR/wgb/.bashrc <<- EOF
        cd /root && exec /bin/wks-01.bh configure
        exit
EOF

  proot-distro copy $HOME_DIR/.bashrc zpd-wks-01:/home/wks01/.bashrc

  proot-distro login zpd-wks-01 --user wks01

  rm -f $HOME_DIR/wgb/.bashrc
  
  cat > $HOME_DIR/wgb/.bashrc <<- EOF
EOF

  proot-distro copy $HOME_DIR/.bashrc zpd-wks-01:/home/wks01/.bashrc
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
