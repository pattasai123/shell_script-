#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ]; then
    echo "ERROR:: please run this with root access"
fi
dnf remove nginx -y
dnf remove mysql -y