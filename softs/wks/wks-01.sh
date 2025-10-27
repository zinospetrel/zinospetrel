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
  
  exec $ME_FL "install"
  exit
fi

if [ "$CMD" == "install" ]; then
  exec "$HOME_DIR/wgb/wks01a_install"
  exit
fi

if [ "$CMD" == "uninstall" ]; then
  exec "$HOME_DIR/wgb/wks01a_uninstall"
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
  exec /bin/wigeon#ks-01-x
  exit
fi

if [ "$CMD" == "start" ]; then
  exec /bin/wks01x_start
  exit
fi

if [ "$CMD" == "stop" ]; then
  exec /bin/wks01x_stop
  exit
fi
