#!/bin/bash
[ $1 != ${1#/} ] && echo "absolute" || echo "relative"
cd /usr/local/development/apache-tomcat-8.0.36/bin/
( . startup.sh )
sleep 10
( .  shutdown.sh )
