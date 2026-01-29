#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ]; then
    echo "ERROR:: please run this with root access"
fi

if dnf install nginx -y; then 
    echo "Success"
else
    echo "failure"
fi