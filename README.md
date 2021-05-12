# local-dev-traefik

## Description

This is to save you the trouble of managing ports for each development environment by resolving names to traefik in the local development environment.  
Add the following description to docker-compose.yml and add the containers you want to resolve to the network.  
In the name resolution rule, if the name of the container is `hoge-fuga`, it will be named like `hoge.localhost` with the regular expression truncated before the hyphen.

```yml
networks:
  docker_default:
    external: true
    name: docker_default
```
## How to use

Use the following command to copy the sample, customize it as necessary, and launch it

```sh
git clone https://github.com/5ym/Local-Dev-Traefik.git
mv Local-Dev-Traefik docker && cd docker
cp docker-compose-sample.yml docker-compose.yml && cp traefik-sample.toml traefik.toml
```
## Other functions

It comes with portainer, a tool for managing docker via web ui, which can be accessed via portainer.localhost.
