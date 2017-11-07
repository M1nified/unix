
(echo start; sleep 5; echo end)

(echo start; sleep 5; echo end) &

./loop.sh 1000 & ./loop.sh 1000 & ./loop.sh 1000

./fork_wait.sh

(echo start; rmdir 1; echo end;) 2> >(sleep 5; ./read.sh) &