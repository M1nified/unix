#!/bin/bash

echo $BASHPID
echo 'READ IS ON'
while read line; do
echo "READ GOT: $line"
done
echo "READ IS OFF"