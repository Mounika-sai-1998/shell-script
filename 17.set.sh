#!/bn/bash
set -e

error_handler(){
    echo "error occured at script line no $1 : $2"
}
trap 'error_handler $LINENO  $BASH_COMMAND' ERR

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "please run command with super user "
    exit 1 # manually exists if error comes
else 
     echo "it is a super user "
fi  

dnf install mysqlll -y
dnf install git -y

echo " is script proceeding? "