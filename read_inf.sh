#!/bin/bash

echo $BASHPID
echo 'READ IS ON'
while [ 1 ] ; do
 while read line; do
    echo "BLAD: $line"
 done
done