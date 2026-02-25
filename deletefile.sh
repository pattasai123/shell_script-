#!/bin/bash
r="\e[31m"
g='\e[32m'
n='\e[33m'
dir=$(id -u)
if [ $dir -ne 0 ]; then
    echo -e "$r please access this file with root directory $n"
    exit 1;
fi

source=$1
destination=$2

if [ $# -ne 2 ]; then
    usage
fi

usage(){
    echo -e "$r use the command in a proper way $n"
}

if [ ! -d "$source" ]; then
    echo -e "$r file is not exist in the source directory!!"
    exit 1;
fi

if [ ! -d "$destination" ]; then
    echo -e "$r file is not exist in the destination directory!!"
    exit 1;
fi

files=$(find "$source" -name "*.log" -type f)

if [ ! -z "{$files}" ]; then
    echo "file exit"
    date=$(date)
    filename="$destination/applogs-$date.zip"
    find "$source" -name "*.log" -type f | zip -@ -j "$filename"
    if [ -f $filename ]; then
        echo "$g success... $n"
        find "$source" -name "*.log" -type f | while IFS= read -r filepath
        do 
            rm -f $filepath
            echo "Deleting $filepath"
        done
    else
        echo "Archieval ... $R FAILURE $N"
        exit 1
    fi
else
    echo -e "No files to archeive ... $Y SKIPPING $N"
fi
