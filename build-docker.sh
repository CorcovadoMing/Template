#!/bin/bash

docker rmi local/template
docker build -t local/template .
