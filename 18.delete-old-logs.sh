#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then 
    echo -e " $G source directoty exists $N"
else 
     echo -e "$R please make sure $SOURCE_DIRECTORY exists $N"
fi

FILES=(find . -name "*.log" -mtime +14)
echo "Files tp delete : $SCRIPT_NAME"
