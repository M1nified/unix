#!/bin/bash

# ./loop.sh 4 & ./loop.sh 6

i=0
while [ $i -lt $1 ] ; do
    i=$[i+1]
    echo "$$ $1"
    sleep 1
    # while read line; do echo "What has been passed through the pipe is ${line}"; done<pipe1
done