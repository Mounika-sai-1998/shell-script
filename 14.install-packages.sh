#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f2)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

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
        echo  -e "$i already installed $Y..... SKIPPING $N" 
    else
        echo -e "$i not installed $B...... need to install $N" 
    fi

done