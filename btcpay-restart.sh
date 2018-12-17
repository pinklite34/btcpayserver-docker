#!/bin/bash

. /etc/profile.d/mappum/htlc-env.sh

cd "`dirname $mappum/htlc_ENV_FILE`" 
docker-compose -f $mappum/htlc_DOCKER_COMPOSE restart -t "${COMPOSE_HTTP_TIMEOUT:-180}"
