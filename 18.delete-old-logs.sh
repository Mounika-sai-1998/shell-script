#!/bin/bash

SOURCE_DIRECTORY=/app/app-logs

R="\e[31m"

if [ -d $SOURCE_DIRECTORY ]
then 
    echo "source directoty exists"
else 
     echo -e "$R please make sure ${SOURCE_DIRECORY} exists $N"
fi