#!/bn/bash

USERID=$[ id -u ]

if [ $USERID -ne 0 ]
then 
    echo " please run command with super user "
fi  

   dnf install mysql -y