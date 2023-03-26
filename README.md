# Project.FoundryVTT_in_Docker
FoundryVTT in Docker

## Henryk Adam Aleksander Pius Sienkiewicz
`5 May 1846 - 15 November 1916 (aged 70)`

sudo docker compose build

sudo docker run \
--restart=unless-stopped \
--name fvtt \
-p 30000:30000 \
-v /opt/fvtt/app:/home/foundry/fvttd \
-v /opt/fvtt/data:/home/foundry/fvttdata \
-d henryk-sienkiewicz:latest

docker container exec -it henryk-sienkiewicz /bin/bash