#!/bin/bash

number=$1
val=$((number % 2))

if [ $val -eq 0 ]; then
    echo "this is an even number"
else 
    echo "this is an odd number"
fi
