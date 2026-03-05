#!/bn/bash

USERID=$[ id -u ]

if [ $USERID -ne 0 ]
then 
    echo " please run command with super user "

else 
    echo " it is a super user "

fi  

   dnf install my sql -y