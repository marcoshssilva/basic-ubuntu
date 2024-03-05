# Ubuntu-With-Tools

Source image from ubuntu with some softwares:

- git -> clone repositories git
- vim and nano -> edit files
- zip, unzip, tar, gzip, rar, unrar -> compress and uncompress files
- ping, telnet, net-tools -> inspect networks and ips
- wget, curl -> download files or make HTTP requests
- openssh-client -> connect to another machine, vm or container

## Pull Image

Arch's
**ARM64**
**AMD64**
```
docker pull marcoshssilva/ubuntu-with-tools:latest
```

## Build image to multi-arch with Docker Buildx
```
docker buildx build --platform linux/amd64,linux/arm64 --tag marcoshssilva/ubuntu-with-tools:latest .
```

## How to run

Make up instance:
```
docker run -it --name ubuntu-with-tools marcoshssilva/ubuntu-with-tools:latest
```

Access container as user 'ubuntu':
```
docker exec -it $CONTAINER_ID$ /bin/bash
```
> $CONTAINER_ID$ is container id, use docker container ps to view
