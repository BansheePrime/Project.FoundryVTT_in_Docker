#!/usr/bin/env bash
sudo mkdir -p /opt/fvtt/data
sudo mkdir -p /opt/fvtt/app
sudo chown -R $USER:docker /opt/fvtt
ls -lA /opt/fvtt/