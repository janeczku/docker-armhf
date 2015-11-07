# Docker-in-Docker images for armhf/ARMv7

[![](https://badge.imagelayers.io/janeczku/docker-armhf:latest.svg)](https://imagelayers.io/?images=janeczku/docker-armhf:latest 'Get your own badge on imagelayers.io') [![Docker Pulls](https://img.shields.io/docker/pulls/janeczku/docker-armhf.svg)](https://hub.docker.com/r/janeczku/docker-armhf/)

Armhf version of the official [Docker-in-Docker](https://registry.hub.docker.com/_/docker/) images based on `Alpine Linux`. Tested on Raspberry Pi2 and Scaleway C1.

## Supported tags

-	`latest`
-   `latest-dind`
-	`1.8.3`
-   `1.8.3-dind`

## How to use this image

### Start a daemon instance

```console
$ docker run --privileged --name some-docker -d janeczku/docker-armhf:latest-dind
```

## Connect to it from a second container

```console
$ docker run --rm --link some-docker:docker janeczku/docker-armhf:latest version
```

## Documentation

For further instructions refer to the readme of the [official docker image](https://registry.hub.docker.com/_/docker/).

