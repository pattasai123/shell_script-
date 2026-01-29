#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ]; then
    echo "ERROR:: please run this with root access"
fi

query=$(dnf instll nginx -y)

if [ $query -eq 0 ]; then 
    echo "Success"
else
    echo "failure"
fi