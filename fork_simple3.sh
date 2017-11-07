#!/bin/bash 
 
(echo "1 $BASHPID") &
(sleep 1; echo "2 $BASHPID") &
(sleep 2; echo "3 $BASHPID")
