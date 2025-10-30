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
CMD="$1"
HOME_DIR="`cd ~ && pwd`"

cmd_blank() {
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
  echo -e "              STARTUP               "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $WRK_DIR/wgp-01.bh "
  echo -e " "
  
  curl -o $WRK_DIR/wgp-01.bh -sL -H 'Cache-Control: no-cache, no-store' --noproxy "*" "https://tinyurl.com/zpd-wgp-01"
  chmod u+x $WRK_DIR/wgp-01.bh
  chmod u+r $WRK_DIR/wgp-01.bh
  chmod g+x $WRK_DIR/wgp-01.bh
  chmod g+r $WRK_DIR/wgp-01.bh
  chmod o+x $WRK_DIR/wgp-01.bh
  chmod o+r $WRK_DIR/wgp-01.bh
  
  cd $WRK_DIR && /bin/bash -c "./wgp-01.bh clone"
  exit
}

cmd_onboard() {
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
  echo -e "           GETTING START            "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e "Wigeon#GP-01 is commercial software. You will need to buy license to run it. "
  echo -e " "
  echo -e "Visit [ https://tinyurl.com/wgp01pay ] to see how to buy it. "
  echo -e " "
  echo -n 'Now, please run: [> wgp-01 ] for menu ...'
  echo -e " "
  exit
}

cmd_clone() {
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
  echo -e " + PATH: $HOME_DIR/wgb/wgp-01.bh "
  echo -e " "

  pkg install clang -y
  
  curl -o $WRK_DIR/wgp-01.bh -sL -H 'Cache-Control: no-cache, no-store' --noproxy "*" "https://tinyurl.com/zpd-wgp-01"
  chmod u+x $WRK_DIR/wgp-01.bh
  chmod u+r $WRK_DIR/wgp-01.bh
  chmod g+x $WRK_DIR/wgp-01.bh
  chmod g+r $WRK_DIR/wgp-01.bh
  chmod o+x $WRK_DIR/wgp-01.bh
  chmod o+r $WRK_DIR/wgp-01.bh

  mkdir -p $HOME_DIR/wgb
  chmod u+x $HOME_DIR/wgb
  chmod u+r $HOME_DIR/wgb
  chmod g+x $HOME_DIR/wgb
  chmod g+r $HOME_DIR/wgb
  chmod o+x $HOME_DIR/wgb
  chmod o+r $HOME_DIR/wgb

  cp -f $WRK_DIR/wgp-01.bh $HOME_DIR/wgb/wgp-01.bh
  chmod u+w $HOME_DIR/wgb/wgp-01.bh
  chmod u+r $HOME_DIR/wgb/wgp-01.bh
  chmod u+x $HOME_DIR/wgb/wgp-01.bh
  chmod g-x $HOME_DIR/wgb/wgp-01.bh
  chmod g+r $HOME_DIR/wgb/wgp-01.bh
  chmod o-x $HOME_DIR/wgb/wgp-01.bh
  chmod o+r $HOME_DIR/wgb/wgp-01.bh

  curl -o $HOME_DIR/wgb/wgp-01.c -sL -H 'Cache-Control: no-cache, no-store' --noproxy "*" "https://github.com/zinospetrel/zinospetrel/raw/refs/heads/main/softs/wgp/wgp-01/wgp-01.c"

  cd $HOME_DIR/wgb && clang -o wgp-01 wgp-01.c
  
  cd $WRK_DIR && ./wgp-01.bh clone_2
}

cmd_clone_2() {  
  curl -o wgp01.dat -sL -H 'Cache-Control: no-cache, no-store' --noproxy "*" "https://github.com/zinospetrel/zinospetrel/raw/refs/heads/main/softs/wgp/wgp-01/wgp01.dat"

  mv "wgp01.dat" "wgp01.zip"
  chmod u+w "wgp01.zip"
  chmod u+r "wgp01.zip"
  chmod u-x "wgp01.zip"
  chmod g+r "wgp01.zip"
  chmod o+r "wgp01.zip"
  
  cp -rf wgp01.zip $HOME_DIR/wgb/wgp01.zip

  rm -f wgp01.zip
  
  cd $WRK_DIR && ./wgp-01.bh install
  exit
}

cmd_install() {
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
  echo -e " + PATH: $HOME_DIR/wgb/wgp-01.bh "
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
  
  proot-distro login --no-kill-on-exit zpd-wgp-01 

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

  cp -f $HOME_DIR/wgb/.bashrc.org $HOME_DIR/wgb/.bashrc
  
  cat > $HOME_DIR/wgb/.bashrc <<- EOF
    echo "n" > /root/.runrs
    cd /root && unzip -P akpnrsuhg wgp01.zip
    echo "y" > /root/.runrs
        exit
EOF

  sed -i 's/___t___/`/g' $HOME_DIR/wgb/.bashrc

  proot-distro copy $HOME_DIR/wgb/.bashrc zpd-wgp-01:/root/.bashrc

  proot-distro login --no-kill-on-exit zpd-wgp-01 

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
  #rm -f $HOME_DIR/wgb/.bashrc.org

  cd $WRK_DIR && $HOME_DIR/wgb/wgp-01.bh onboard
  exit
}

cmd_register() {
  cmd_fix
  #echo -n -e "\u001b[2J"
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
  echo -e "               REGISTER             "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $HOME_DIR/wgb/wgp-01.bh "
  echo -e " "
  
  proot-distro copy $HOME_DIR/wgb/wgp-01-lic.txt zpd-wgp-01:/root/wgp-01-lic.txt 

  cp -f $HOME_DIR/wgb/.bashrc.org $HOME_DIR/wgb/.bashrc
  
  cat > $HOME_DIR/wgb/.bashrc <<- EOF
    echo "n" > /root/.runrs
	cd /root/wgp01 && ./wgp_version -dl
	cd /root/wgp01 && echo -e "\n=====] License Key [=====\n___t___cat /root/wgp-01-lic.txt___t___\n================\n"
	cd /root/wgp01 && ./wgp_register "___t___cat /root/wgp-01-lic.txt___t___"
    echo "y" > /root/.runrs
        exit
EOF

  sed -i 's/___t___/`/g' $HOME_DIR/wgb/.bashrc

  proot-distro copy $HOME_DIR/wgb/.bashrc zpd-wgp-01:/root/.bashrc

  proot-distro login --no-kill-on-exit zpd-wgp-01 

  proot-distro copy zpd-wgp-01:/root/.runrs $HOME_DIR/wgb/.runrs

  RUN_RS="`cat $HOME_DIR/wgb/.runrs`"

  if [ "$RUN_RS" == "n" ]; then
    echo -e "\n==[WGP]==> Failed to register Wigeon#GP-01 ...\n"
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

  exit
}

cmd_config() {
  cmd_fix
  #echo -n -e "\u001b[2J"
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
  echo -e "              Configure             "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $HOME_DIR/wgb/wgp-01.bh "
  echo -e " "
  
  cp -f $HOME_DIR/wgb/.bashrc.org $HOME_DIR/wgb/.bashrc
  
  cat > $HOME_DIR/wgb/.bashrc <<- EOF
    echo "n" > /root/.runrs
	nano /root/wgp01/wgp.conf
	cp -f /root/wgp01/wgp.conf /root/wgp01/meta/web/cgi-bin/wgp.conf
    echo "y" > /root/.runrs
        exit
EOF

  sed -i 's/___t___/`/g' $HOME_DIR/wgb/.bashrc

  proot-distro copy $HOME_DIR/wgb/.bashrc zpd-wgp-01:/root/.bashrc

  proot-distro login --no-kill-on-exit zpd-wgp-01 

  proot-distro copy zpd-wgp-01:/root/.runrs $HOME_DIR/wgb/.runrs

  RUN_RS="`cat $HOME_DIR/wgb/.runrs`"

  if [ "$RUN_RS" == "n" ]; then
    echo -e "\n==[WGP]==> Failed to configure Wigeon#GP-01 ...\n"
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

  exit
}


cmd_uninstall() {
  cmd_fix
  #echo -n -e "\u001b[2J"
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
  echo -e " + PATH: $HOME_DIR/wgb/wgp-01.bh "
  echo -e " "
  
  proot-distro remove zpd-wgp-01 
  exit
}

cmd_login() {
  cmd_fix
  #echo -n -e "\u001b[2J"
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
  echo -e " + PATH: $HOME_DIR/wgb/wgp-01.bh "
  echo -e " "

  cp -f $HOME_DIR/wgb/.bashrc.org $HOME_DIR/wgb/.bashrc
  
  cat > $HOME_DIR/wgb/.bashrc <<- EOF
    cd /root/wgp01
EOF

  proot-distro copy $HOME_DIR/wgb/.bashrc zpd-wgp-01:/root/.bashrc

  proot-distro login --no-kill-on-exit zpd-wgp-01 

  proot-distro copy $HOME_DIR/wgb/.bashrc.org zpd-wgp-01:/root/.bashrc

  exit
}

cmd_data() {
  cmd_fix
  #echo -n -e "\u001b[2J"
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
  echo -e " + PATH: $HOME_DIR/wgb/wgp-01.bh "
  echo -e " "

  termux-setup-storage

  DLS_DIR="$HOME_DIR/storage/downloads"
  UPL_FL="$DLS_DIR/wgp_user.zip"

  if [ -f $UPL_FL ]; then
    echo -e "\n==[WGP]==> Data File: $UPL_FL\n"
    proot-distro copy $UPL_FL zpd-wgp-01:/root/wgp_user.zip
  fi

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

  proot-distro login --no-kill-on-exit zpd-wgp-01 

  proot-distro copy zpd-wgp-01:/root/.runrs $HOME_DIR/wgb/.runrs

  proot-distro copy $HOME_DIR/wgb/.bashrc.org zpd-wgp-01:/root/.bashrc

  RUN_RS="`cat $HOME_DIR/wgb/.runrs`"

  if [ "$RUN_RS" == "n" ]; then
    echo -e "\n==[WGP]==> Failed to manage data for Wigeon#GP-01 ...\n"
	exit
  fi

  proot-distro copy zpd-wgp-01:/root/wgp_user.zip $HOME_DIR/wgb/wgp_user.zip

  echo -e "\n==[WGP]==> New Data File: $UPL_FL\n"

  cp -rf $HOME_DIR/wgb/wgp_user.zip $UPL_FL
  
  exit
}

cmd_go() {
  proot-distro copy zpd-wgp-01:/root/wgp01/wgp.conf $HOME_DIR/wgb/
  proot-distro copy zpd-wgp-01:/root/wgp01/wgp_domain $HOME_DIR/wgb/
  proot-distro copy zpd-wgp-01:/root/wgp01/wgp_wport $HOME_DIR/wgb/
  proot-distro copy zpd-wgp-01:/root/wgp01/wgp_wuri $HOME_DIR/wgb/
  WURI="`cd $HOME_DIR/wgb && ./wgp_wuri`"
  
  termux-open-url "$WURI"  
  exit
}

cmd_start() {
  cmd_fix
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
  echo -e "               START                "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $HOME_DIR/wgb/wgp-01.bh "
  echo -e " "
  
  /bin/bash -c "$HOME_DIR/wgb/wgp-01.bh onstart"
  
  /bin/bash -c "$HOME_DIR/wgb/wgp-01.bh go"
  exit
}

cmd_onstart() {
  cp -f $HOME_DIR/wgb/.bashrc.org $HOME_DIR/wgb/.bashrc
  
  cat > $HOME_DIR/wgb/.bashrc <<- EOF
    echo "n" > /root/.runrs
	cd /root/wgp01 && ./wgp_start&
	sleep 300
    echo "y" > /root/.runrs
        exit
EOF

  proot-distro copy $HOME_DIR/wgb/.bashrc zpd-wgp-01:/root/.bashrc

  proot-distro login --no-kill-on-exit zpd-wgp-01 

  proot-distro copy zpd-wgp-01:/root/.runrs $HOME_DIR/wgb/.runrs

  proot-distro copy $HOME_DIR/wgb/.bashrc.org zpd-wgp-01:/root/.bashrc

  RUN_RS="`cat $HOME_DIR/wgb/.runrs`"

  if [ "$RUN_RS" == "n" ]; then
    echo -e "\n==[WGP]==> Failed to start servers for Wigeon#GP-01 ...\n"
	exit
  fi

  exit
}

cmd_stop() {
  cmd_fix
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
  echo -e "               STOP                 "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $HOME_DIR/wgb/wgp-01.bh "
  echo -e " "

  cp -f $HOME_DIR/wgb/.bashrc.org $HOME_DIR/wgb/.bashrc
  
  cat > $HOME_DIR/wgb/.bashrc <<- EOF
    echo "n" > /root/.runrs
	cd /root/wgp01 && ./wgp_stop&
    echo "y" > /root/.runrs
        exit
EOF

  proot-distro copy $HOME_DIR/wgb/.bashrc zpd-wgp-01:/root/.bashrc

  proot-distro login --no-kill-on-exit zpd-wgp-01 

  proot-distro copy zpd-wgp-01:/root/.runrs $HOME_DIR/wgb/.runrs

  proot-distro copy $HOME_DIR/wgb/.bashrc.org zpd-wgp-01:/root/.bashrc

  RUN_RS="`cat $HOME_DIR/wgb/.runrs`"

  if [ "$RUN_RS" == "n" ]; then
    echo -e "\n==[WGP]==> Failed to stop servers for Wigeon#GP-01 ...\n"
	exit
  fi

  exit
}

cmd_fix() {
  cp -f $HOME_DIR/wgb/.bashrc.org $HOME_DIR/wgb/.bashrc
  
  cat > $HOME_DIR/wgb/.bashrc <<- EOF
    cd /root/wgp01
EOF

  proot-distro copy $HOME_DIR/wgb/.bashrc zpd-wgp-01:/root/.bashrc
}

main() {
if [ "$CMD" == "" ]; then
  cmd_blank
  exit
fi

if [ "$CMD" == "onboard" ]; then
  cmd_onboard
  exit
fi

if [ "$CMD" == "clone" ]; then
  cmd_clone
  exit
fi

if [ "$CMD" == "clone_2" ]; then
  cmd_clone_2
  exit
fi

if [ "$CMD" == "install" ]; then
  cmd_install
  exit
fi

if [ "$CMD" == "uninstall" ]; then
  cmd_uninstall
  exit
fi

if [ "$CMD" == "login" ]; then
  cmd_login
  exit
fi

if [ "$CMD" == "data" ]; then
  cmd_data
  exit
fi

if [ "$CMD" == "go" ]; then
  cmd_go
  exit
fi

if [ "$CMD" == "start" ]; then
  cmd_start
  exit
fi

if [ "$CMD" == "onstart" ]; then
  cmd_onstart
  exit
fi

if [ "$CMD" == "stop" ]; then
  cmd_stop
  exit
fi

if [ "$CMD" == "fix" ]; then
  cmd_fix
  exit
fi

if [ "$CMD" == "config" ]; then
  cmd_config
  exit
fi

if [ "$CMD" == "register" ]; then
  cmd_register
  exit
fi

}

main EOF
