#!/bin/bash

cname=$1

docker exec -t $(docker ps  -f "name=${cname}.1" --format "{{.ID}}") isql-v 1111 dba dba "EXEC= select cl_sys_stat ('$2', clr => $3);" | tail -n 3 | head -n 1

