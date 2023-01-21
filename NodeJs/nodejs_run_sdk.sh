#!/usr/bin/env bash

docker run -it --rm  -v "$PWD":/usr/src/myapp nodejs_sdk  $@