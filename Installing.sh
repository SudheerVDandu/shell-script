#!/bin/bash

USERID=(id -u)

if [ $USERID -ne 0 ]
    then
    echo "Required SUDO access"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
    then

    dnf install mysql -y
    
    if [ $? -ne 0 ]
    then
        echo " Instillation mysql...Failed"

        
        exit 1
        else
        echo "Instillation mysql.... Success"
    fi
else
    echo "MySQL already Installed"

fi


dnf list installed git

    if [ $? -ne 0 ]
    then 
    dnf install git -y

    if [ $? -ne 0 ]
    then 
    echo " Instillation GIT Successful"

    else
    echo "Instillation GIT Failure"
    fi
else
echo " GIT is already Installed"
fi








