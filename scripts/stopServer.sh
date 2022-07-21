#!/bin/bash
cd /home/ubuntu/nodeApp

# this script is to check whether the pm2 app is srnning or not
echo "running the script"

pm2 describe app > /dev/null
RUNNING=$?

if [ "${RUNNING}" -ne 0 ]; then
        echo "App is not running"
else
        echo "APP IS RUNNING"
        echo "APP WILL BE TERMINIATED"
        sudo pm2 stop app.js
fi;
