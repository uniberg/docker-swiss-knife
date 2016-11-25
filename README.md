# docker-swiss-knife
This repo contains the Dockerfile for a multipurpose docker container usefull for debugging network issues.

## Usage
You should use this container in the network mode "host" to get access to the native interfaces of the host system.
```
docker run --rm -it --net=host uniberg/swiss-knife
```
