#!/usr/bin/env bash

docker run -it --rm  -v "$PWD":/usr/src/app perl_sdk  $@