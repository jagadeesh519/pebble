#!/usr/bin/env bash

docker image pull tomcat:8.0
docker build -t pebble .

exit
