#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ]; then
    echo "ERROR:: please run this with root access"
fi

execute(){
    if [ $1 -eq 0 ]; then 
        echo "successfully installed $2"
    else
        echo "failure"
}
dnf install nginx -y
q1=$?
execute $q1 $nginx
dnf install mysql -y
q2=$?
execute $q2 $mysql