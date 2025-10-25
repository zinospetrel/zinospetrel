#!/bin/bash

WRK_DIR=$(pwd -P)
ME_FL="$WRK_DIR/ubuntu-x86_64.bh"
PID="$$"
CMD="$1"

if [ "$CMD" == "" ]; then
  echo -e "\n=====>] Write to file: $ME_FL [<=====\n"
  wget -O "$ME_FL" "https://tinyurl.com/zptmx-ubuntu-x86-64"
  chmod u+x $ME_FL
  chmod g+x $ME_FL
  chmod o+x $ME_FL
  $ME_FL "install"
  exit
fi

if [ "$CMD" == "install" ]; then
  pkg update -y && pkg upgrade -y

  pkg install wget -y

  pkg install -y proot-distro qemu-user-x86_64

  echo "DISTRO_ARCH=x86_64" > $PREFIX/etc/proot-distro/ubuntu-x86_64.sh
  echo "PROOT_DISTRO_DEBUG=1" >> $PREFIX/etc/proot-distro/ubuntu-x86_64.sh
  echo "PROOT_DISTRO_QEMU_BINARY=qemu-x86_64" >> $PREFIX/etc/proot-distro/ubuntu-x86_64.sh
  echo -e "DISTRO_NAME=\"Ubuntu (25.10)\"" >> $PREFIX/etc/proot-distro/ubuntu-x86_64.sh
  echo -e "DISTRO_COMMENT=\"Regular release (questing).\"" >> $PREFIX/etc/proot-distro/ubuntu-x86_64.sh

  pkg install termux-api -y

  termux-open-url "https://play.google.com/store/apps/details?id=com.iiordanov.freebVNC"

  termux-open-url "https://play.google.com/store/apps/details?id=com.gazlaws.codeboard"

  #am start -a android.intent.action.VIEW -d "https://play.google.com/store/apps/details?id=com.iiordanov.freebVNC"

  #am start -a android.intent.action.VIEW -d "https://play.google.com/store/apps/details?id=com.gazlaws.codeboard"

  pkg install proot-distro -y

  proot-distro install ubuntu

  proot-distro copy $ME_FL ubuntu:/home/root/ubuntu-x86_64.bh

  proot-distro login ubuntu-x86_64 -- /home/root/ubuntu-x86_64.bh configure

  proot-distro login ubuntu-x86_64
fi

if [ "$CMD" == "uninstall" ]; then
  proot-distro remove ubuntu-x86_64 -y  
fi

if [ "$CMD" == "configure" ]; then
  apt update -y

  apt install elementary-xfce-icon-theme -y

  apt install xfce4 -y

  apt install dbus-x11

  apt install tigervnc-standalone-server -y

  service dbus start

  dbus-launch

  apt install firefox -y

  cp -f /home/root/ubuntu-x86_64.bh /bin/

  /bin/ubuntu-x86_64.bh start
fi

if [ "$CMD" == "start" ]; then
  rm -rf /tmp/tigervnc.*
  vncserver -xstartup xterm
fi

if [ "$CMD" == "stop" ]; then
  pkill -9 -f vncserver

  pkill -9 -f Xtigervnc
fi
