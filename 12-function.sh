#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ]; then
    echo "ERROR:: please run this with root access"
fi
r='\e[31m)'
execute(){
    if [ $1 -eq 0 ]; then 
        echo "successfully installed $2"
    else
        echo "failure"
    fi
}
dnf list installed nginx
n1=$?
if [ $n1 -eq 0 ]; then
    echo -e "$r it was installed in your system"
else
    dnf install nginx -y
    q1=$?
    execute $q1 nginx
fi
dnf list installed mysql
n2=$?
if [ $n2 -eq 0 ]; then
    echo -e "$r it was installed in your system"
else
    dnf install mysql -y
    q2=$?
    execute $q2 mysql
fi