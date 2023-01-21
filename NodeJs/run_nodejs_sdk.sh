#!/usr/bin/bash

docker run -it --rm  -v "$PWD":/usr/src/myapp nodejs_sdk  $@