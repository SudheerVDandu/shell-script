#!/bin/bash

USERID=(id -u)

if [ $USERID -ne 0 ]
    then
    echo "Required SUDO access"
    exit 1
fi

dnf install mysqll -y

if [ $? -ne 0 ]
    then
    echo "Instillation mysql...FAILED"
    exit 1
    echo "Instillation mysql...SUCCESS"

fi





