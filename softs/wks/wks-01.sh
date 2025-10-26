#!/bin/bash

WRK_DIR=$(pwd -P)
PID="$$"
CMD="$1"
ME_FL="$WRK_DIR/wks-01.bh"

if [ "$CMD" == "" ]; then
  echo -n -e "\u001b[2J"
  echo -e "===================================="
  echo -e "         _  Web+Gopher Kiosk Network" 
  echo -e " __ __ _(_)__ _ ___ ___ _ _  ╋╋┓┏┓┏┓"    
  echo -e " \\ V  V / / _\` / -_) _ \\ ' \\ ┃┃┃┫ ┗┓" 
  echo -e "  \\_/\\_/|_\\__, \\___\\___/_||_|╋╋┛┗┛┗┛" 
  echo -e "   P-01    |___/ V1: 2025.10.25_17.00"
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
  wget -O "wks-01.bh" "https://tinyurl.com/zpd-wks-01"
  chmod u+x $ME_FL
  chmod g+x $ME_FL
  chmod o+x $ME_FL
  echo -e " "
  echo -e "==[WKS]==> Press 'Enter' to continue"
  read v_ans
  $ME_FL "install"
  exit
fi

if [ "$CMD" == "install" ]; then
  echo -n -e "\u001b[2J"
  echo -e "===================================="
  echo -e "         _  Web+Gopher Kiosk Network" 
  echo -e " __ __ _(_)__ _ ___ ___ _ _  ╋╋┓┏┓┏┓"    
  echo -e " \\ V  V / / _\` / -_) _ \\ ' \\ ┃┃┃┫ ┗┓" 
  echo -e "  \\_/\\_/|_\\__, \\___\\___/_||_|╋╋┛┗┛┗┛" 
  echo -e "   P-01    |___/ V1: 2025.10.25_17.00"
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

  pkg install wget -y

  pkg install -y proot-distro qemu-user-x86-64

  echo "DISTRO_ARCH=x86_64" > $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo "PROOT_DISTRO_DEBUG=1" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo "PROOT_DISTRO_QEMU_BINARY=qemu-x86-64" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo -e "DISTRO_NAME=\"Wigeon#KS-01 on Ubuntu (24.04)\"" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo -e "DISTRO_COMMENT=\"LTS (Noble).\"" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo -e "TARBALL_URL['x86_64']=\"https://github.com/termux/proot-distro/releases/download/v4.11.0/ubuntu-noble-x86_64-pd-v4.11.0.tar.xz\"" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo -e "TARBALL_SHA256['x86_64']=\"f024b1e17413737d8b385d22736d2e3eb2af9ba665fdbda1277bcca8f397e5a2\"" >> $PREFIX/etc/proot-distro/zpd-wks-01.sh
  echo -e "
distro_setup() {
	echo -e \"Configure en_US.UTF-8 locale.\"
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd dpkg-reconfigure locales
	echo -e \"Configure en_US.UTF-8 locale. -- Finished.\"
}
"  >> $PREFIX/etc/proot-distro/zpd-wks-01.sh

  pkg install termux-api -y

  termux-open-url "https://play.google.com/store/apps/details?id=com.iiordanov.freebVNC"

  termux-open-url "https://play.google.com/store/apps/details?id=com.gazlaws.codeboard"

  proot-distro install zpd-wks-01

  proot-distro copy $ME_FL zpd-wks-01:/root/wks-01.bh

  proot-distro login zpd-wks-01 -- /root/wks-01.bh configure

  #proot-distro login zpd-wks-01

  echo -e " "
  echo -e "==[WKS]==> Press 'Enter' to continue"
  read v_ans
fi

if [ "$CMD" == "uninstall" ]; then
  echo -n -e "\u001b[2J"
  echo -e "===================================="
  echo -e "         _  Web+Gopher Kiosk Network" 
  echo -e " __ __ _(_)__ _ ___ ___ _ _  ╋╋┓┏┓┏┓"    
  echo -e " \\ V  V / / _\` / -_) _ \\ ' \\ ┃┃┃┫ ┗┓" 
  echo -e "  \\_/\\_/|_\\__, \\___\\___/_||_|╋╋┛┗┛┗┛" 
  echo -e "   P-01    |___/ V1: 2025.10.25_17.00"
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
  
  proot-distro remove zpd-wks-01 -y  

  echo -e " "
  echo -e "==[WKS]==> Press 'Enter' to continue"
  read v_ans
fi

if [ "$CMD" == "configure" ]; then
  echo -n -e "\u001b[2J"
  echo -e "===================================="
  echo -e "         _  Web+Gopher Kiosk Network" 
  echo -e " __ __ _(_)__ _ ___ ___ _ _  ╋╋┓┏┓┏┓"    
  echo -e " \\ V  V / / _\` / -_) _ \\ ' \\ ┃┃┃┫ ┗┓" 
  echo -e "  \\_/\\_/|_\\__, \\___\\___/_||_|╋╋┛┗┛┗┛" 
  echo -e "   P-01    |___/ V1: 2025.10.25_17.00"
  echo -e "===================================="
  echo -e "    Non-touch Kiosk for Android"
  echo -e "===================================="
  echo -e ""
  echo -e "===================================="
  echo -e "             CONFIGURE              "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $ME_FL "
  echo -e " "
  
  apt update -y

  apt install elementary-xfce-icon-theme -y --no-install-recommends

  add-apt-repository --yes --no-update ppa:xtradeb/apps

  apt install chromium -y --no-install-recommends
  
  apt install xfce4 -y --no-install-recommends

  apt install dbus-x11 -y --no-install-recommends

  apt install xterm -y --no-install-recommends

  apt install tigervnc-standalone-server -y --no-install-recommends

  apt install tigervnc-tools -y --no-install-recommends

  service dbus start

  dbus-launch

  cp -f /root/wks-01.bh /bin/

  /bin/wks-01.bh start

  echo -e " "
  echo -e "==[WKS]==> Press 'Enter' to continue"
  read v_ans
fi

if [ "$CMD" == "start" ]; then
  echo -n -e "\u001b[2J"
  echo -e "===================================="
  echo -e "         _  Web+Gopher Kiosk Network" 
  echo -e " __ __ _(_)__ _ ___ ___ _ _  ╋╋┓┏┓┏┓"    
  echo -e " \\ V  V / / _\` / -_) _ \\ ' \\ ┃┃┃┫ ┗┓" 
  echo -e "  \\_/\\_/|_\\__, \\___\\___/_||_|╋╋┛┗┛┗┛" 
  echo -e "   P-01    |___/ V1: 2025.10.25_17.00"
  echo -e "===================================="
  echo -e "    Non-touch Kiosk for Android"
  echo -e "===================================="
  echo -e ""
  echo -e "===================================="
  echo -e "              START                 "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $ME_FL "
  echo -e " "

  rm -rf /tmp/tigervnc.*
  vncserver -xstartup xterm

  echo -e " "
  echo -e "==[WKS]==> Press 'Enter' to continue"
  read v_ans
fi

if [ "$CMD" == "stop" ]; then
  echo -n -e "\u001b[2J"
  echo -e "===================================="
  echo -e "         _  Web+Gopher Kiosk Network" 
  echo -e " __ __ _(_)__ _ ___ ___ _ _  ╋╋┓┏┓┏┓"    
  echo -e " \\ V  V / / _\` / -_) _ \\ ' \\ ┃┃┃┫ ┗┓" 
  echo -e "  \\_/\\_/|_\\__, \\___\\___/_||_|╋╋┛┗┛┗┛" 
  echo -e "   P-01    |___/ V1: 2025.10.25_17.00"
  echo -e "===================================="
  echo -e "    Non-touch Kiosk for Android"
  echo -e "===================================="
  echo -e ""
  echo -e "===================================="
  echo -e "               STOP                 "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $ME_FL "
  echo -e " "
  
  pkill -9 -f vncserver

  pkill -9 -f Xtigervnc

  echo -e " "
  echo -e "==[WKS]==> Press 'Enter' to continue"
  read v_ans
fi
