# Docker-in-Docker images for armhf/ARMv7

Armhf version of the official [Docker-in-Docker](https://registry.hub.docker.com/_/docker/) images based on `Alpine Linux`. Tested on Raspberry Pi2 and Scaleway C1.

## Supported tags

-	`latest`
-   `latest-dind`
-	`1.8`
-   `1.8-dind`

## How to use this image

### Start a daemon instance

```console
$ docker run --privileged --name some-docker -d janeczku/armhf-docker:1.8-dind
```

## Connect to it from a second container

```console
$ docker run --rm --link some-docker:docker janeczku/armhf-docker:1.8 version
```

## Documentation

For further instructions refer to the readme of the [official docker image](https://registry.hub.docker.com/_/docker/).

