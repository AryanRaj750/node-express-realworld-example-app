#/bin/bash

s1=$(curl -LI localhost:5000/ -o /dev/null -w '%{http_code}\n' -s)
if [ $s1 == 200 ]
then
   echo 'Nice'

else

   echo 'something went wrong'

fi
