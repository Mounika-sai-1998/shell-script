#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f2)
LOGFILE=/tmp/$SCRIPT_NAME/$TIMESTAMP.log
VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo "$2 is sucesss..."
    else
        echo "$2 is failure...."
    fi
}
if [ $USERID -ne 0 ]
then 
    echo "please run command with super user"
else
    echo "it is a super user"
fi

for i in $@
do
    echo "package to install : $i"
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then
        echo "$i already installed ..... SKIPPING" 
    else
        echo "$i not installed ...... need to install" 
    fi

done