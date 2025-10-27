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

  wget -O "~/bin/wigeon#ks-01-x" "https://github.com/zinospetrel/zinospetrel/raw/refs/heads/main/softs/wks/wks-01/wigeon%23ks-01-x"
  chmod u+x "~/bin/wigeon#ks-01-x"
  chmod g+x "~/bin/wigeon#ks-01-x"
  chmod o+x "~/bin/wigeon#ks-01-x"
  
  $ME_FL "install"
  exit
fi

if [ "$CMD" == "install" ]; then
  ~/bin/wks01a_install
  exit
fi

if [ "$CMD" == "uninstall" ]; then
  ~/bin/wks01a_uninstall
  exit
fi

if [ "$CMD" == "configure" ]; then
  /bin/wigeon#ks-01-x
  exit
fi

if [ "$CMD" == "start" ]; then
  /bin/wks01x_start
  exit
fi

if [ "$CMD" == "stop" ]; then
  /bin/wks01x_stop
  exit
fi
