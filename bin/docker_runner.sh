#!/usr/bin/env bash


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
SDK_NAME="$1"
ARGS_DOCKER=${@:2}

case $1 in 
    erlang)
    ;;
    golang)
    ;;
    java)
    ;;
    nodejs)
    ;;
    perl)
    ;;
    python2)
    ;;
    python3)
    ;;
    r)
    ;;
    reactjs)
    ;;
    rust)
    ;;
    *)
        print_help
        exit 1
    ;;


esac

#echo "sdk: $1_sdk args ${ARGS_DOCKER}"

docker run -it --rm  --user ${USER_ID} -v "$PWD":/usr/src/app "${1}_sdk"  $ARGS_DOCKER