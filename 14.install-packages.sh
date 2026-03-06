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
        echo "$2 is $R sucesss...$N"
    else
        echo "$2 is $G failure....$N"
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
        dnf install $i -y &>>$LOGFILE 
        VALIDATE $1 "installing  $i"
    fi

done