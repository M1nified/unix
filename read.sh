#!/bin/bash

echo $BASHPID
echo 'READ IS ON'
while read line; do
echo "BLAD: $line"
done
echo "READ IS OFF"