#!/bin/bash

cd /home/ubuntu

pm2 describe app > /dev/null
status=$?
if [ $status -ne 0 ]
then
  echo 'App is not running'
else
  echo 'App is running'
  echo 'App will be Terminated'
  pm2 stop app
fi
