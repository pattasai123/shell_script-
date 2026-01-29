#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ]; then
    echo "ERROR:: please run this with root access"
fi
r='\e[31m'
g='\e[32m'
o='\e[33m'
l='\e[34m'
m='\e[35m'
m='\e[36m'
p='\e[37m'
echo -e "$r HELLO"
echo -e "$g HELLO"
echo -e "$o HELLO"
echo -e "$l HELLO"
echo -e "$m HELLO"
echo -e "$n HELLO"
echo -e "$p HELLO"
# execute(){
#     if [ $1 -eq 0 ]; then 
#         echo "successfully installed $2"
#     else
#         echo "failure"
#     fi
# }
# dnf list installed nginx
# n1=$?
# if [ $n1 -eq 0 ]; then
#     echo -e "$r it was installed in your system"
# else
#     dnf install nginx -y
#     q1=$?
#     execute $q1 nginx
# fi
# dnf list installed mysql
# n2=$?
# if [ $n2 -eq 0 ]; then
#     echo -e "$r it was installed in your system"
# else
#     dnf install mysql -y
#     q2=$?
#     execute $q2 mysql
# fi