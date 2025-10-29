#!/bin/bash
#====================================	
#         _  > Gopher Proxy via Web <	
# __ __ _(_)__ _ ___ ___ _ _  ╋╋┏┓┏┓	
# \ V  V / / _` / -_) _ \ ' \ ┃┃┃┓┃┃	
#  \_/\_/|_\__, \___\___/_||_|╋╋┗┛┣┛	
#   P-01   |___/ V6: 2025.11.03_17.00	
#====================================	
#     Gopher Proxy for Android
#====================================	
# Copyright @ 2025 Dinh Thoai Tran <zinospetrel@proton.me>
# All rights reserved.
#   -------------------------------
# This script is runned as:
# > curl -sL -H 'Cache-Control: no-cache, no-store' --noproxy "*" "https://tinyurl.com/zpd-wgp-01" | bash
# Redistribute it in any other form is not allowed.
# ====================================

WRK_DIR=$(pwd -P)
PID="$$"
CMD="$1"
ME_FL="$WRK_DIR/wgp-01.bh"
HOME_DIR="`cd ~ && pwd`"

if [ "$CMD" == "" ]; then
  echo -n -e "\u001b[2J"
  echo -e "===================================="	
  echo -e "         _  > Gopher Proxy via Web <"
  echo -e " __ __ _(_)__ _ ___ ___ _ _  ╋╋┏┓┏┓"    
  echo -e " \\ V  V / / _\` / -_) _ \\ ' \\ ┃┃┃┓┃┃" 
  echo -e "  \\_/\\_/|_\\__, \\___\\___/_||_|╋╋┗┛┣┛" 
  echo -e "   P-01   |___/ V6: 2025.11.03_17.00"	
  echo -e "===================================="	
  echo -e "     Gopher Proxy for Android"
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

  curl -o $ME_FL -sL -H 'Cache-Control: no-cache, no-store' --noproxy "*" "https://tinyurl.com/zpd-wgp-01"
  chmod u+x $ME_FL
  chmod u+r $ME_FL
  chmod g+x $ME_FL
  chmod g+r $ME_FL
  chmod o+x $ME_FL
  chmod o+r $ME_FL

  cp -f $ME_FL $HOME_DIR/wgb/wgp-01.bh
  chmod u+w $HOME_DIR/wgb/wgp-01.bh
  chmod u+r $HOME_DIR/wgb/wgp-01.bh
  chmod u+x $HOME_DIR/wgb/wgp-01.bh
  chmod g-x $HOME_DIR/wgb/wgp-01.bh
  chmod g+r $HOME_DIR/wgb/wgp-01.bh
  chmod o-x $HOME_DIR/wgb/wgp-01.bh
  chmod o+r $HOME_DIR/wgb/wgp-01.bh

  echo -e "\n==[WGP]==> Wigeon#GP-01 is commercial software. \nYou can buy its license at https://zinospetrel.github.io/lp/wgp/01/ .\nEnter your license key to continue: "
  read -t 300 -p "_" v_license

  echo -e "\n==[WGP]==> You have entered license key: $v_license \nNow we continue to install Wigeon#GP-01 ..."

  echo "$v_license" > $HOME_DIR/wgb/wgp-01-lic.txt
  
  curl -o wgp01.dat -sL -H 'Cache-Control: no-cache, no-store' --noproxy "*" "https://github.com/zinospetrel/zinospetrel/raw/refs/heads/main/softs/wgp/wgp-01/wgp01.dat"

  mv "wgp01.dat" "wgp01.zip"
  chmod u+w "wgp01.zip"
  chmod u+r "wgp01.zip"
  chmod u-x "wgp01.zip"
  chmod g+r "wgp01.zip"
  chmod o+r "wgp01.zip"
  
  cp -rf wgp01.zip $HOME_DIR/wgb/wgp01.zip

  rm -f wgp01.zip
  
  cd $WRK_DIR && exec $ME_FL install
  exit
fi

if [ "$CMD" == "install" ]; then
  echo -n -e "\u001b[2J"
  echo -e "===================================="	
  echo -e "         _  > Gopher Proxy via Web <"
  echo -e " __ __ _(_)__ _ ___ ___ _ _  ╋╋┏┓┏┓"    
  echo -e " \\ V  V / / _\` / -_) _ \\ ' \\ ┃┃┃┓┃┃" 
  echo -e "  \\_/\\_/|_\\__, \\___\\___/_||_|╋╋┗┛┣┛" 
  echo -e "   P-01   |___/ V6: 2025.11.03_17.00"	
  echo -e "===================================="	
  echo -e "     Gopher Proxy for Android"
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
	
  echo "DISTRO_ARCH=x86_64" > $PREFIX/etc/proot-distro/zpd-wgp-01.sh
  echo "PROOT_DISTRO_DEBUG=0" >> $PREFIX/etc/proot-distro/zpd-wgp-01.sh
  echo "PROOT_DISTRO_QEMU_BINARY=qemu-user-x86-64" >> $PREFIX/etc/proot-distro/zpd-wgp-01.sh
  echo -e "DISTRO_NAME=\"Wigeon#GP-01 on Ubuntu (24.04)\"" >> $PREFIX/etc/proot-distro/zpd-wgp-01.sh
  echo -e "DISTRO_COMMENT=\"24.04 (Noble).\"" >> $PREFIX/etc/proot-distro/zpd-wgp-01.sh
  echo -e "TARBALL_URL['x86_64']=\"https://github.com/termux/proot-distro/releases/download/v4.11.0/ubuntu-noble-x86_64-pd-v4.11.0.tar.xz\"" >> $PREFIX/etc/proot-distro/zpd-wgp-01.sh
  echo -e "TARBALL_SHA256['x86_64']=\"f024b1e17413737d8b385d22736d2e3eb2af9ba665fdbda1277bcca8f397e5a2\"" >> $PREFIX/etc/proot-distro/zpd-wgp-01.sh
  echo -e "
distro_setup() {
	echo -e \"Setting up distro ...\"
}
"  >> $PREFIX/etc/proot-distro/zpd-wgp-01.sh

  proot-distro install zpd-wgp-01

  proot-distro login zpd-wgp-01 -- /bin/bash -c "exit"

  proot-distro copy zpd-wgp-01:/root/.bashrc $HOME_DIR/wgb/.bashrc.org

  proot-distro copy zpd-wgp-01:/root/.bashrc $HOME_DIR/wgb/.bashrc

  cat > $HOME_DIR/wgb/.bashrc <<- EOF
    echo "n" > /root/.runrs
  apt update -y
  apt install -y --no-install-recommends mc libcom-err2 zip unzip
echo '#!/bin/bash
cmd="__d__1"
shift 1
__d__cmd __d__@
' > /bin/sudo
  sed -i 's/__d__/$/g' /bin/sudo
  chmod u+w /bin/sudo
  chmod u+x /bin/sudo
  chmod g+x /bin/sudo
  chmod o+x /bin/sudo
  chmod u+r /bin/sudo
  chmod g+r /bin/sudo
  chmod o+r /bin/sudo
    echo "y" > /root/.runrs
    exit
EOF

  proot-distro copy $HOME_DIR/wgb/.bashrc zpd-wgp-01:/root/.bashrc
  
  proot-distro login zpd-wgp-01

  proot-distro copy zpd-wgp-01:/root/.runrs $HOME_DIR/wgb/.runrs

  RUN_RS="`cat $HOME_DIR/wgb/.runrs`"

  if [ "$RUN_RS" == "n" ]; then
    echo -e "\n==[WGP]==> Failed to initially setup ...\n"
    cat > $HOME_DIR/wgb/.bashrc <<- EOF
EOF
    proot-distro copy $HOME_DIR/wgb/.bashrc zpd-wgp-01:/root/.bashrc
	exit
  fi

  proot-distro copy $HOME_DIR/wgb/wgp01.zip zpd-wgp-01:/root/wgp01.zip 
  proot-distro copy $HOME_DIR/wgb/wgp-01-lic.txt zpd-wgp-01:/root/wgp-01-lic.txt 

  cp -f $HOME_DIR/wgb/.bashrc.org $HOME_DIR/wgb/.bashrc
  
  cat > $HOME_DIR/wgb/.bashrc <<- EOF
    echo "n" > /root/.runrs
    cd /root && unzip -P akpnrsuhg wgp01.zip
	cd /root/wgp01 && ./wgp_register "`cat /root/wgp-01-lic.txt`"
    echo "y" > /root/.runrs
        exit
EOF

  proot-distro copy $HOME_DIR/wgb/.bashrc zpd-wgp-01:/root/.bashrc

  proot-distro login zpd-wgp-01

  proot-distro copy zpd-wgp-01:/root/.runrs $HOME_DIR/wgb/.runrs

  RUN_RS="`cat $HOME_DIR/wgb/.runrs`"

  if [ "$RUN_RS" == "n" ]; then
    echo -e "\n==[WGP]==> Failed to set up Wigeon#GP-01 ...\n"
    cat > $HOME_DIR/wgb/.bashrc <<- EOF
EOF
    proot-distro copy $HOME_DIR/wgb/.bashrc zpd-wgp-01:/root/.bashrc
	exit
  fi

  cp -f $HOME_DIR/wgb/.bashrc.org $HOME_DIR/wgb/.bashrc
  
  cat > $HOME_DIR/wgb/.bashrc <<- EOF
    cd /root/wgp01
EOF

  proot-distro copy $HOME_DIR/wgb/.bashrc zpd-wgp-01:/root/.bashrc

  echo -e "\n==[WKS]==> We have set up Wigeon#GP-01 on Ubuntu 24.04 ...\n"

  proot-distro copy $HOME_DIR/wgb/wgp-01.bh zpd-wgp-01:/root/wgp-01.bh

  proot-distro copy $HOME_DIR/wgb/wgp-01.bh zpd-wgp-01:/bin/wgp-01.bh

  rm -f $HOME_DIR/wgb/.bashrc
  rm -f $HOME_DIR/wgb/.bashrc.org

  cd $WRK_DIR && $HOME_DIR/wgb/wgp-01.bh start &
  
  exit
fi

if [ "$CMD" == "uninstall" ]; then
  echo -n -e "\u001b[2J"
  echo -e "===================================="	
  echo -e "         _  > Gopher Proxy via Web <"
  echo -e " __ __ _(_)__ _ ___ ___ _ _  ╋╋┏┓┏┓"    
  echo -e " \\ V  V / / _\` / -_) _ \\ ' \\ ┃┃┃┓┃┃" 
  echo -e "  \\_/\\_/|_\\__, \\___\\___/_||_|╋╋┗┛┣┛" 
  echo -e "   P-01   |___/ V6: 2025.11.03_17.00"	
  echo -e "===================================="	
  echo -e "     Gopher Proxy for Android"
  echo -e "===================================="	
  echo -e ""
  echo -e "===================================="
  echo -e "              UNINSTALL             "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $ME_FL "
  echo -e " "
  
  proot-distro remove zpd-wgp-01 
  exit
fi

if [ "$CMD" == "login" ]; then
  echo -n -e "\u001b[2J"
  echo -e "===================================="	
  echo -e "         _  > Gopher Proxy via Web <"
  echo -e " __ __ _(_)__ _ ___ ___ _ _  ╋╋┏┓┏┓"    
  echo -e " \\ V  V / / _\` / -_) _ \\ ' \\ ┃┃┃┓┃┃" 
  echo -e "  \\_/\\_/|_\\__, \\___\\___/_||_|╋╋┗┛┣┛" 
  echo -e "   P-01   |___/ V6: 2025.11.03_17.00"	
  echo -e "===================================="	
  echo -e "     Gopher Proxy for Android"
  echo -e "===================================="	
  echo -e ""
  echo -e "===================================="
  echo -e "               LOGIN                "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $ME_FL "
  echo -e " "
  
  proot-distro login --no-kill-on-exit zpd-wgp-01 
  exit
fi

if [ "$CMD" == "data" ]; then
  echo -n -e "\u001b[2J"
  echo -e "===================================="	
  echo -e "         _  > Gopher Proxy via Web <"
  echo -e " __ __ _(_)__ _ ___ ___ _ _  ╋╋┏┓┏┓"    
  echo -e " \\ V  V / / _\` / -_) _ \\ ' \\ ┃┃┃┓┃┃" 
  echo -e "  \\_/\\_/|_\\__, \\___\\___/_||_|╋╋┗┛┣┛" 
  echo -e "   P-01   |___/ V6: 2025.11.03_17.00"	
  echo -e "===================================="	
  echo -e "     Gopher Proxy for Android"
  echo -e "===================================="	
  echo -e ""
  echo -e "===================================="
  echo -e "               DATA                 "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $ME_FL "
  echo -e " "

  termux-setup-storage

  DLS_DIR="$HOME_DIR/storage/downloads"
  UPL_FL="$DLS_DIR/wgp_user.zip"

  if [ -f $UPL_FL ]; then
    echo -e "\n==[WGP]==> Data File: $UPL_FL\n"
    proot-distro copy $UPL_FL zpd-wgp-01:/root/wgp_user.zip
  fi

  proot-distro copy zpd-wgp-01:/root/.bashrc $HOME_DIR/wgb/.bashrc.org

  cp -f $HOME_DIR/wgb/.bashrc.org $HOME_DIR/wgb/.bashrc
  
  cat > $HOME_DIR/wgb/.bashrc <<- EOF
    echo "n" > /root/.runrs
	rm -rf /root/wgp-user
	mkdir -p /root/wgp-user
	if [ -f /root/wgp-user.zip ]; then
      unzip -d /root/wgp-user /root/wgp-user.zip
	fi
	mc /root/wgp-user /root/wgp01/meta/gopher
    rm -f /root/wgp-user.zip
	cd /root/wgp-user && zip -r /root/wgp-user.zip ./*
    echo "y" > /root/.runrs
        exit
EOF

  proot-distro copy $HOME_DIR/wgb/.bashrc zpd-wgp-01:/root/.bashrc

  proot-distro login zpd-wgp-01

  proot-distro copy zpd-wgp-01:/root/.runrs $HOME_DIR/wgb/.runrs

  proot-distro copy $HOME_DIR/wgb/.bashrc.org zpd-wgp-01:/root/.bashrc

  RUN_RS="`cat $HOME_DIR/wgb/.runrs`"

  if [ "$RUN_RS" == "n" ]; then
    echo -e "\n==[WGP]==> Failed to manage data for Wigeon#GP-01 ...\n"
	exit
  fi

  echo -e "\n==[WGP]==> New Data File: $UPL_FL\n"
  rm -rf $UPL_FL
  
  proot-distro copy zpd-wgp-01:/root/wgp_user.zip $UPL_FL
  exit
fi

if [ "$CMD" == "go" ]; then
  proot-distro copy zpd-wgp-01:/root/wgp01/wgp.conf $HOME_DIR/wgb/
  proot-distro copy zpd-wgp-01:/root/wgp01/wgp_domain $HOME_DIR/wgb/
  proot-distro copy zpd-wgp-01:/root/wgp01/wgp_wport $HOME_DIR/wgb/
  proot-distro copy zpd-wgp-01:/root/wgp01/wgp_wuri $HOME_DIR/wgb/
  WURI="`cd $HOME_DIR/wgb && ./wgp_wuri`"
  
  termux-open-url "$WURI"  
  exit
fi

if [ "$CMD" == "start" ]; then
  cd $WRK_DIR && $HOME_DIR/wgb/wgp-01.bh onstart &

  sleep 30
  
  /bin/bash -c "cd $WRK_DIR && $HOME_DIR/wgb/wgp-01.bh go"
  exit
fi

if [ "$CMD" == "onstart" ]; then
  proot-distro login --no-kill-on-exit zpd-wgp-01 -- /bin/bash -c "cd /root/wgp01; ./wgp_start& read -p 'Press Ctrl-Z to continue ...'; exit;"
  exit
fi

if [ "$CMD" == "stop" ]; then
  proot-distro login --no-kill-on-exit zpd-wgp-01 -- /bin/bash -c "cd /root/wgp01; ./wgp_stop& read -p 'Press Enter to continue ...'; exit;"
  echo -e "\nPress Enter to continue ... "
  read -n 1 -t 60 v_key
  exit
fi

if [ "$CMD" == "fix" ]; then
  cat > $HOME_DIR/wgb/.bashrc <<- EOF
EOF
  proot-distro copy $HOME_DIR/wgb/.bashrc zpd-wgp-01:/root/.bashrc
fi
