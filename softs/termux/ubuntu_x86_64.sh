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

  pkg install -y proot-distro qemu-user-x86-64

  echo "DISTRO_ARCH=x86_64" > $PREFIX/etc/proot-distro/ubuntu-x86_64.sh
  echo "PROOT_DISTRO_DEBUG=1" >> $PREFIX/etc/proot-distro/ubuntu-x86_64.sh
  echo "PROOT_DISTRO_QEMU_BINARY=qemu-x86-64" >> $PREFIX/etc/proot-distro/ubuntu-x86_64.sh
  echo -e "DISTRO_NAME=\"Ubuntu (24.04)\"" >> $PREFIX/etc/proot-distro/ubuntu-x86_64.sh
  echo -e "DISTRO_COMMENT=\"LTS (Noble).\"" >> $PREFIX/etc/proot-distro/ubuntu-x86_64.sh
  #echo -e "TARBALL_URL['x86_64']=\"https://github.com/termux/proot-distro/releases/download/v4.30.1/ubuntu-questing-x86_64-pd-v4.30.1.tar.xz\"" >> $PREFIX/etc/proot-distro/ubuntu-x86_64.sh
  #echo -e "TARBALL_SHA256['x86_64']=\"74f7c8492a2f3e720d5aa89de6572cbb90b14c4b21dee87ab33416b6fb1088c3\"" >> $PREFIX/etc/proot-distro/ubuntu-x86_64.sh
  echo -e "TARBALL_URL['x86_64']=\"https://github.com/termux/proot-distro/releases/download/v4.11.0/ubuntu-noble-x86_64-pd-v4.11.0.tar.xz\"" >> $PREFIX/etc/proot-distro/ubuntu-x86_64.sh
  echo -e "TARBALL_SHA256['x86_64']=\"f024b1e17413737d8b385d22736d2e3eb2af9ba665fdbda1277bcca8f397e5a2\"" >> $PREFIX/etc/proot-distro/ubuntu-x86_64.sh

  pkg install termux-api -y

  termux-open-url "https://play.google.com/store/apps/details?id=com.iiordanov.freebVNC"

  termux-open-url "https://play.google.com/store/apps/details?id=com.gazlaws.codeboard"

  #am start -a android.intent.action.VIEW -d "https://play.google.com/store/apps/details?id=com.iiordanov.freebVNC"

  #am start -a android.intent.action.VIEW -d "https://play.google.com/store/apps/details?id=com.gazlaws.codeboard"

  pkg install proot-distro -y

  proot-distro install ubuntu-x86_64

  proot-distro copy $ME_FL ubuntu-x86_64:/home/root/ubuntu-x86_64.bh

  proot-distro login ubuntu-x86_64 -- /home/root/ubuntu-x86_64.bh configure

  #proot-distro login ubuntu-x86_64
fi

if [ "$CMD" == "uninstall" ]; then
  proot-distro remove ubuntu-x86_64 -y  
fi

if [ "$CMD" == "configure" ]; then
  apt update -y

  apt install elementary-xfce-icon-theme -y --no-install-recommends

  apt install xfce4 -y --no-install-recommends

  apt install dbus-x11 -y --no-install-recommends

  apt install tigervnc-standalone-server -y --no-install-recommends

  service dbus start

  dbus-launch

  #apt install firefox -y --no-install-recommends

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
