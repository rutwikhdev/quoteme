#!/bin/bash

# read file
file_name=$1
lines=`wc -l < $file_name`

# pick range based on no. of lines in a file
min=0
max=$((lines/2))
max=$((max-1))

# pick 2 lines 

num=`jot -r 1 $min $max`
num=$((num*2))
num=$((num+1))
eol=$((num+1))

COLOR='\033[0;36m'
quote=`sed -n $num,${eol}p $file_name`
printf "\n${COLOR}$quote\n"
