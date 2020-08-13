#!/bin/bash

op=$1

if [ "$op" == 'up' ] 
then
    docker-compose -p archguard_prod -f docker-compose-prod.yml up -d    
elif [ "$op" == 'stop' ]
then
    docker-compose -p archguard_prod -f docker-compose-prod.yml  stop
elif [ "$op" == 'rm' ]
then
    docker-compose -p archguard_prod -f docker-compose-prod.yml  rm
elif [ "$op" == 'pull' ]
then
    docker-compose -p archguard_prod -f docker-compose-prod.yml pull
elif [ "$op" == 'upgrade' ]
then
    docker-compose -p archguard_prod -f docker-compose-prod.yml pull && docker-compose -p archguard_prod -f docker-compose-prod.yml up -d
else   
    echo "Not support operation $op !!"
fi
