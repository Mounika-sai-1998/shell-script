#!/bn/bash
set -e
USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "please run command with super user "
    exit 1 # manually exists if error comes
else 
     echo "it is a super user "
fi  

dnf install mysql -y
dnf install git -y

echo " is script proceeding? "