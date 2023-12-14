# Ubuntu-With-Tools

Source image from ubuntu with some softwares:

- git -> clone repositories git
- vim and nano -> edit files
- zip, unzip, tar, gzip, rar, unrar -> compress and uncompress files
- ping, telnet, net-tools -> inspect networks and ips
- mysql-client postgresql-client -> connect to SQL databases
- wget, curl -> download files or make HTTP requests
- openssh-client -> connect to another machine, vm or container

## Pull Image

Arch's
**ARM64**
**AMD64**
**PPC64LE**
**S390X**
```
docker pull marcoshssilvadev/ubuntu-with-tools:latest
```

## Build image to multi-arch with Docker Buildx
```
docker buildx build --platform linux/amd64,linux/arm64,linux/ppc64le,linux/s390x --tag marcoshssilvadev/ubuntu-with-tools:latest .
```

## How to run

Make up instance:
```
chmod +x ./build-image.sh
./build-image.sh
docker run -it --name ubuntu-with-tools marcoshssilvadev/ubuntu-with-tools:latest

```

Access container as user 'ubuntu':
```
docker exec -it $CONTAINER_ID$ /bin/bash
```
> $CONTAINER_ID$ is container id, use docker container ps to view
