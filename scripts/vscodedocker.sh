#/bin/bash

# Runs code-server from docker image

docker run -it -p 127.0.0.1:8080:8080 -v "${HOME}/environment/" -v "$PWD" codercom/code-server:v2