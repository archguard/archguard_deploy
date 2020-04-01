#!/bin/bash

op=$1

if [ "$op" == 'up' ] 
then
    docker-compose up -d    
elif [ "$op" == 'stop' ]
then
    docker-compose stop
elif [ "$op" == 'rm' ]
then
    docker-compose rm
else   
    echo "Not support operation $op !!"
fi
