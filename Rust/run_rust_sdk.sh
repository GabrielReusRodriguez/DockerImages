#!/usr/bin/bash

docker run -it --rm  -v "$PWD":/usr/src/myapp rust_sdk  $@



