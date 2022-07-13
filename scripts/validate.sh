#/bin/bash
nc -z -W 2 localhost 22
if[$? === 0]:
then: echo OK
else:
 echo `~/.pm2/log/app-error.log'
 exit
