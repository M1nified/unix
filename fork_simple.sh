#!/bin/bash

addPid() {
    desc=$1
    pid=$2
    echo "$desc -- $pid"
    pids=(${pids[@]} $pid)
}

echopid()
{
    for i in {1..5}; do
        sleep 1
        echo $BASHPID
    done    
};

echopid & echopid
