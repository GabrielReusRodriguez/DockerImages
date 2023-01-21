#!/usr/bin/env bash

docker run -it --rm  -v "$PWD":/usr/src/myapp rust_sdk  $@



