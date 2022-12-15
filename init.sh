#!/bin/sh

git clone https://github.com/5ym/Local-Dev-Traefik.git docker
cd docker
cp docker-compose-sample.yml docker-compose.yml && cp traefik-sample.toml traefik.toml
cp traefik-sample.toml traefik.toml
docker compose up -d
