# Project.FoundryVTT_in_Docker
FoundryVTT in Docker

## Henryk Adam Aleksander Pius Sienkiewicz
`5 May 1846 - 15 November 1916 (aged 70)`
``henryk-sienkiewicz``

sudo docker compose build

sudo docker run \
--restart=unless-stopped \
--name fvtt \
-p 30000:30000 \
-v /opt/fvtt/app:/home/foundry/fvttd \
-v /opt/fvtt/data:/home/foundry/fvttdata \
-d henryk-sienkiewicz:latest

docker container exec -it henryk-sienkiewicz /bin/bash

## Maria Skłodowska Curie
`7 November 1867 - 4 July 1934 (aged 66)`
``maria-skłodowska-curie``

## Deploy with NGINX in front of FoundryVTT
docker pull nginx:stable
docker pull node:alpine3.17

docker network create fvtt-net
docker run -d --name fvtt --network fvtt-net --network-alias application -p 30000:30000 maria-skłodowska-curie:latest

docker run \
--name fvtt \
--network fvtt-net --network-alias application \
-p 30000:30000 \
-v /opt/fvtt/app:/home/foundry/fvttd \
-v /opt/fvtt/data:/home/foundry/fvttdata \
-d henryk-sienkiewicz:latest

docker run -it --network fvtt-net nginx:stable