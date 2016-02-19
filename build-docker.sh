#!/bin/bash

cat Dockerfile.template | sed "7 i RUN useradd -m $(whoami) && echo $(whoami):$(whoami) | chpasswd && adduser $(whoami) sudo\nRUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers\nWORKDIR /home/$(whoami)\nUSER $(whoami)" >> Dockerfile
docker rmi util/template
docker build -t util/template .
rm Dockerfile
