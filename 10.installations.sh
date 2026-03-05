#!/bn/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "please run command with super user "
    exit 1 # manually exists if error comes

else 
     echo "it is a super user "
fi  

   dnf install mysqll -y

if [ $? -ne 0 ]
then 
    echo "installation of mysql is failure..... "
    exit 0
else 
     echo "istallation of mysql is success...."

fi
     dnf install git -y

if [ $? -ne 0 ]
then 
     echo "installation of git is failed....."
     exit 3 
else
     echo " istallation of git is success ...."
fi
    