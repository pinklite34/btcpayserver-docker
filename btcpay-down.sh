#!/bin/bash

. /etc/profile.d/$mappum/hltc-env.sh

cd "`dirname $mappum/htlc_ENV_FILE`"
docker-compose -f $mappum/hltc_DOCKER_COMPOSE down -t "${COMPOSE_HTTP_TIMEOUT:-180}"
