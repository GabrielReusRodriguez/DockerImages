#!/usr/bin/env bash

docker run -it --rm  -v "$PWD":/usr/src/app nodejs_sdk  $@