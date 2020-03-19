#!/usr/bin/env bash
. ~/.bash_profile

sudo docker image pull tomcat:8.0

sudo docker container create --publish 8082:8080 --name pebble tomcat:8.0

sudo docker image build -t jagadeesh/pebble ./

sudo docker container run -it --publish 8081:8080 jagadeesh/pebble
exit
