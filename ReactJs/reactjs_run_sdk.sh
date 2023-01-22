#!/usr/bin/env bash

docker run -it --rm -u root -v "$PWD":/usr/src/app reactjs_sdk  $@