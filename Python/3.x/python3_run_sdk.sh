#!/usr/bin/env bash

curr_uid=`id -u`

docker run -it --rm  --user ${curr_uid} -v "$PWD":/usr/src/app python3_sdk  $@