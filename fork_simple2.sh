#!/bin/bash

dosmth()
{
    echo $BASHPID
    for i in {1..10}; do
        echo $i
        sleep 1
    done
}

# Spawn a child process:
(dosmth) & pid=$!
# in the background, sleep for 10 secs then kill that process
echo $BASHPID
(sleep 5 && kill -9 $pid) & waiter=$!
echo $BASHPID
# wait on our worker process and return the exitcode
exitcode=$(wait $pid && echo $?)
# kill the waiter subshell, if it still runs
kill -9 $waiter #2>/dev/null
# 0 if we killed the waiter, cause that means the process finished before the waiter
finished_gracefully=$?