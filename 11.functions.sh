#!/bn/bash

USERID=$(id -u)

validate(){
    echo " existing status is : $1 "
    echo " what are you doing : $2 "

}

if [ $USERID -ne 0 ]
then 
    echo "please run command with super user "
    exit 1 # manually exists if error comes

else 
     echo "it is a super user "
fi 

validate $? "intallation" 
     dnf install mysql -y

validate $? "intallation"
    dnf install git -y


    