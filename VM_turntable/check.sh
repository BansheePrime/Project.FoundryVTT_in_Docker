#!/usr/bin/env bash
echo 'port 80 --- ' $(curl -I --silent 192.168.56.48 | awk 'NR==3')
echo 'port 30000 --- ' $(curl -I --silent 192.168.56.48:30000 | sed -n '3 p')
