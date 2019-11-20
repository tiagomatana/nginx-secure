#!/bin/bash
printf "\nHOSTNAME: "
read host
if [ -z $host ]; then
    host='localhost'
fi
cp ./sites-available/localhost.conf ./sites-enabled/${host}.conf
sed -i "s/localhost/$HOSTNAME/g" ./sites-enabled/${host}.conf