#!/bin/sh

port=8787
ip=$(ifconfig eth0 | grep 'inet addr:' | cut -f 2 -d ':' | awk '{print $1}')

#  Simple nc based webserver.
while true; do
  { echo -e 'HTTP/1.1 200 OK\r\n\r\nHello WS'; echo "From: $ip"; } | nc -l -p $port
done
