#!/usr/bin/env bash

docker run -it --rm  -v "$PWD":/usr/src/app java_sdk  $@