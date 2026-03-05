#!/bin/bash

echo " All variables : $@ "
echo " number of variables passed : $# "
echo " Script name : $0 "
echo " current working directory : $PWD "
echo " Home directory of current User : $HOME "
echo " which user is running this script : $USER "
echo " Host name : $HOSTNAME"
echo " process ID of current Shell Script : $$ "
sleep 60 &
echo " process ID of last backgroud command : $! "