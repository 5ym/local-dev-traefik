#!/bin/sh

git clone https://github.com/5ym/Local-Dev-Traefik.git docker
cd docker
cp compose.sample.yml compose.yml
cp traefik.sample.yml traefik.yml
docker compose up -d
