#!/bin/bash

cp Dockerfile.template Dockerfile
echo "RUN adduser --disabled-password --gecos '' $(whoami)" >> Dockerfile
docker rmi util/template
docker build -t util/template .
