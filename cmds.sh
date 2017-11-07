
(echo start; sleep 5; echo end)

(echo start; sleep 5; echo end) &

./loop.sh 1000 & ./loop.sh 1000 & ./loop.sh 1000

./fork_wait.sh