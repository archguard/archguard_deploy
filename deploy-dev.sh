#!/bin/bash

op=$1

if [ "$op" == 'up' ] 
then
    docker-compose -p archguard -f docker-compose-dev.yml up -d    
elif [ "$op" == 'stop' ]
then
    docker-compose -p archguard -f docker-compose-dev.yml  stop
elif [ "$op" == 'rm' ]
then
    docker-compose -p archguard -f docker-compose-dev.yml  rm
elif [ "$op" == 'pull' ]
then
    docker-compose -p archguard -f docker-compose-dev.yml pull
elif [ "$op" == 'upgrade' ]
then
    docker-compose -p archguard -f docker-compose-dev.yml pull && docker-compose -p archguard -f docker-compose-dev.yml up -d
else   
    echo "Not support operation $op !!"
fi
