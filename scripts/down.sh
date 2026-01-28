#!/usr/bin/env bash
source ./scripts/common_utils.sh

# send stop to the MC server
mcsrv_container="mcsrv"
if [ $(container_is_running "${mcsrv_container}") -eq 1 ]; then
    echo "stop" | socat EXEC:"docker attach ${mcsrv_container}",pty STDIN
    sleep 1
    # if it didnt exit kill it
    if [ $(container_is_running "${mcsrv_container}") -eq 1 ]; then
        docker kill ${mcsrv_container}
    fi
fi
docker compose down
