#!/bn/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1 )
LOGS_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

validate(){
if [ $1 -ne 0 ]
then 
    echo "$2 is failure ......"
else
     echo "$2 is success ...."
fi
}

if [ $USERID -ne 0 ]
then 
    echo "please run command with super user "
    exit 1 # manually exists if error comes

else 
     echo "it is a super user "
fi 
     dnf install mysql -y &>>$LOGS_FILE
     validate $? "intallation" 
     
     dnf install git -y &>>$LOGS_FILE
     validate $? "intallation"
   


    