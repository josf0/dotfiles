#!/bin/zsh
cd ~/docker/immich-app
docker pull ghcr.io/immich-app/immich-server:release
docker compose down
docker compose up -d
