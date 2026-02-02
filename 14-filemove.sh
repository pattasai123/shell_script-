#!/bin/bash
user=$(id -u)

if [ $user -ne 0 ]; then
    echo "ERROR:: please run this with root access"
fi
folder="sudo mkdir -p /var/log/shell-script"
file=$(echo $0| cut -d "." -f1)
log_file="$folder/$file.log"
r='\e[31m'
g='\e[32m'
o='\e[33m'
# l='\e[34m'
# m='\e[35m'
# n='\e[36m'
# p='\e[37m'
# echo -e "$r HELLO"
# echo -e "$g HELLO"
# echo -e "$o HELLO"
# echo -e "$l HELLO"
# echo -e "$m HELLO"
# echo -e "$n HELLO"
# echo -e "$p HELLO"
execute(){
    if [ $1 -eq 0 ]; then 
        echo "successfully installed $2"
    else
        echo "failure"
    fi
}
dnf list installed nginx &>> $log_file
n1=$?
if [ $n1 -eq 0 ]; then
    echo -e "$r it was installed in your system"
else
    dnf install nginx -y &>>$log_file
    q1=$?
    execute $q1 nginx
fi
dnf list installed mysql &>>$log_file
n2=$?
if [ $n2 -eq 0 ]; then
    echo -e "$r it was installed in your system"
else
    dnf install mysql -y >>$log_file
    q2=$?
    execute $q2 mysql
fi