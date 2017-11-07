#!/bin/bash

addPid() {
    desc=$1
    pid=$2
    echo "$desc -- $pid"
    pids=(${pids[@]} $pid)
}

declare -a pids
waitPids() {
    while [ ${#pids[@]} -ne 0 ]; do
        echo "Waiting for pids: ${pids[@]}"
        local range=$(eval echo {0..$((${#pids[@]}-1))})
        local i
        for i in $range; do
            if ! kill -0 ${pids[$i]} 2> /dev/null; then
                echo "Done -- ${pids[$i]}"
                unset pids[$i]
            fi
        done
        pids=("${pids[@]}") # Expunge nulls created by unset.
        sleep 1
    done
    echo "Done!"
}

for i in {2..5}; do
    echo "LOOP: $i"
    sleep $i &
    addPid "Sleep for $i" $!
done
waitPids
