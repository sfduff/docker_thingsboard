#!/bin/bash

docker run -it -d \
  -p 9090:9090 \
  -p 1883:1883 \
  -p 5683:5683/udp \
  -v /Users/Shared/Docker/thingsboard/data:/data \
  -v /Users/Shared/Docker/thingsboard/logs:/var/log/thingsboard \
  --name thingsboard \
  --restart always \
  thingsboard/tb-postgres
