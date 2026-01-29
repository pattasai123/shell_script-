#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ]; then
    echo "ERROR:: please run this with root access"
fi

# if dnf install nginx -y; then 
#     echo "Success"
# else
#     echo "failure"
# fi

dnf install mysql -y

query=$?
if [ $query -eq 0 ]; then 
    echo "success"
else
    echo "failure"
fi