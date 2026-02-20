#!/bin/bash
r="\e[31m"
g='\e[32m'
n='\e[33m'
dir=$(id -u)
if [ dir -ne 0 ]; then
    echo -e "$r please access this file with root directory $n"
    exit 1;
fi
val=5
while [ $val -gt 0 ]
do 
    echo "$val"
    val=$(($val-1))
    sleep 1;
done
echo "$val"
echo "while loop is completed"