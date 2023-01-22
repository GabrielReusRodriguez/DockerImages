#!/usr/bin/env bash

curr_uid=`id -u`
curr_gid=`id -g`
curr_userName=`whoami`
curr_groupName="python3"

#Determinamos la ruta del script ( independeintemente de si lo llamamos por enlace simbolico o no.)
SOURCE=${BASH_SOURCE[0]}
while [ -L "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
  SOURCE=$(readlink "$SOURCE")
  [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
SCRIPT_FOLDER=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
ACTUAL_FOLDER=`pwd`

#Nos movemos  a la carpeta del script donde tenemos los requirements.txt y el Dockerfile
cd "${SCRIPT_FOLDER}"

docker build  --build-arg UserId="${curr_uid}" --build-arg GroupId="${curr_gid}"   --build-arg UserName="${curr_userName}" --build-arg GroupName="${curr_groupName}"  --force-rm -t python3_sdk  .

#Volvemos de nuevo a donde estabamos.
cd "${ACTUAL_FOLDER}"