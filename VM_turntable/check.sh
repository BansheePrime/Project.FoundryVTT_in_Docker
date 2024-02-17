#!/usr/bin/env bash
echo 'port 80 --- ' $(curl -I --silent 192.168.56.49 | awk 'NR==3')
echo 'port 30000 --- ' $(curl -I --silent 192.168.56.49:30000 2>/dev/null | sed -n '3 p')
