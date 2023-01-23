#!/usr/bin/env bash

#Definimos los parámetros
#$1 será el nombre de  la imagen docker yt a la vez del grupo por defecto en el contenedor

VERSION="0.1"


function print_help {

    echo -e "uso: docker_builder <sdk>"
    echo -e "Parameters:"
    echo -e " sdk:"
    echo -e "   erlang    Create Erlang sdk"
    echo -e "   golang    Create GoLang sdk"
    echo -e "   nodejs    Create NodeJs sdk"
    echo -e "   java      Create OpenJdk sdk"
    echo -e "   perl      Create Perl sdk"
    echo -e "   python2   Create Python 2.x sdk"
    echo -e "   python3   Create Python 3.x sdk"
    echo -e "   r         Create R sdk"
    echo -e "   reactjs   Create ReactJs sdk"
    echo -e "   rust      Create Rust sdk"
    
}


USER_ID=`id -u`
GROUP_ID=`id -g`
USER_NAME=`whoami`
GROUP_NAME="$1"
SDK_NAME="$1"




#Determinamos la ruta del script ( independeintemente de si lo llamamos por enlace simbolico o no.)
SOURCE=${BASH_SOURCE[0]}
while [ -L "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
  SOURCE=$(readlink "$SOURCE")
  [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
SCRIPT_FOLDER=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
ACTUAL_FOLDER=`pwd`

#Nos movemos  a la carpeta del script donde tenemos los ficheros Docker necesarios.

case ${SDK_NAME} in 
    erlang)
        DOCKER_DATA_FOLDER="${SCRIPT_FOLDER}/../Erlang"
    ;;
    golang)
        DOCKER_DATA_FOLDER="${SCRIPT_FOLDER}/../Golang"
    ;;
    java)
        DOCKER_DATA_FOLDER="${SCRIPT_FOLDER}/../Openjdk"
    ;;
    nodejs)
        DOCKER_DATA_FOLDER="${SCRIPT_FOLDER}/../NodeJs"
    ;;
    perl)
        DOCKER_DATA_FOLDER="${SCRIPT_FOLDER}/../Perl"
    ;;
    python2)
        DOCKER_DATA_FOLDER="${SCRIPT_FOLDER}/../Python/2.x"
    ;;
    python3)
        DOCKER_DATA_FOLDER="${SCRIPT_FOLDER}/../Python/3.x"
    ;;
    r)
        DOCKER_DATA_FOLDER="${SCRIPT_FOLDER}/../R"
    ;;
    reactjs)
        DOCKER_DATA_FOLDER="${SCRIPT_FOLDER}/../ReactJs"
    ;;
    rust)
        DOCKER_DATA_FOLDER="${SCRIPT_FOLDER}/../Rust"
    ;;
    *)
        print_help
        exit 1
    ;;
esac

cd "${DOCKER_DATA_FOLDER}"

pwd
#Llamamos a docker para que construya la imagen.
docker build  --build-arg UserId="${USER_ID}" --build-arg GroupId="${GROUP_ID}"   --build-arg UserName="${USER_NAME}" --build-arg GroupName="${GROUP_NAME}"  --force-rm -t "${SDK_NAME}_sdk" .

#Volvemos de nuevo a donde estabamos.
cd "${ACTUAL_FOLDER}"