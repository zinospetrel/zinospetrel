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
  mkdir -p "~/bin"
  wget -O "wks-01.bh" "https://tinyurl.com/zpd-wks-01"
  chmod u+x $ME_FL
  chmod g+x $ME_FL
  chmod o+x $ME_FL
  wget -O "~/bin/wigeon#ks-01-a" "https://github.com/zinospetrel/zinospetrel/raw/refs/heads/main/softs/wks/wks-01/wigeon%23ks-01-a"
  chmod u+x "~/bin/wigeon#ks-01-a"
  chmod g+x "~/bin/wigeon#ks-01-a"
  chmod o+x "~/bin/wigeon#ks-01-a"
  ln -s "~/bin/wigeon#ks-01-a" "~/bin/wks01a_help"
  ln -s "~/bin/wigeon#ks-01-a" "~/bin/wks01a_install"
  ln -s "~/bin/wigeon#ks-01-a" "~/bin/wks01a_uninstall"
  
  $ME_FL "install"
  exit
fi

if [ "$CMD" == "install" ]; then
  ~/bin/wks01a_install
fi

if [ "$CMD" == "uninstall" ]; then
  ~/bin/wks01a_uninstall
fi

if [ "$CMD" == "configure" ]; then
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
  echo -e "             CONFIGURE              "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $ME_FL "
  echo -e " "

  echo "#!/bin/bash
cmd=\"$1\"
shift 1
$cmd $@
" > /bin/sudo
  chmod u+x /bin/sudo
  chmod g+x /bin/sudo
  chmod o+x /bin/sudo

  apt update -y

  apt install elementary-xfce-icon-theme -y --no-install-recommends

  apt install dnsutils -y --no-install-recommends

  apt install chromium -y --no-install-recommends
  
  apt install xfce4 -y --no-install-recommends

  apt install dbus-x11 -y --no-install-recommends

  apt install xterm -y --no-install-recommends

  apt install tigervnc-standalone-server -y --no-install-recommends

  apt install tigervnc-tools -y --no-install-recommends

  service dbus start

  dbus-launch

  cp -f /root/wks-01.bh /bin/

  apt install p7zip-full p7zip-rar -y --no-install-recommends

  apt install libnspr4 -y --no-install-recommends

  apt install libnss3 -y --no-install-recommends

  apt install libasound2t64 -y --no-install-recommends

  apt update -y && apt full-upgrade -y

  #apt install xvfb -y --no-install-recommends
  
  #/bin/wks-01.bh start
fi

if [ "$CMD" == "start" ]; then
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
  echo -e "              START                 "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $ME_FL "
  echo -e " "

  rm -rf /tmp/tigervnc.*
  vncserver -xstartup xterm
fi

if [ "$CMD" == "stop" ]; then
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
  echo -e "               STOP                 "              
  echo -e "   ------------------------------   "   
  echo -e " "
  echo -e " + PATH: $ME_FL "
  echo -e " "
  
  pkill -9 -f vncserver

  pkill -9 -f Xtigervnc

  rm -rf /tmp/tigervnc.*
fi


