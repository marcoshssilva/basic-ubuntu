# marcoshssilva/ubuntu-with-tools

Source image from ubuntu with some softwares:

- git -> clone repositories git
- vim and nano -> edit files
- zip, unzip, tar, gzip, rar, unrar -> compress and uncompress files
- ping, telnet, net-tools -> inspect networks and ips
- mysql-client postgresql-client -> connect to SQL databases
- wget, curl -> download files or make HTTP requests
- openssh-client -> connect to another machine, vm or container

## Pull Image

**ARM64**
```
docker pull app-nx.marcoshssilva.com.br/arm64/basic-ubuntu:latest
```

**AMD64**
```
docker pull app-nx.marcoshssilva.com.br/amd64/basic-ubuntu:latest
```

## How to run

Make up instance:
```
chmod +x ./build-image.sh
./build-image.sh
docker run -it --name ubuntu-with-tools marcoshssilva/basic-ubuntu

```

Access container as user 'ubuntu':
```
docker exec -it $CONTAINER_ID$ /bin/bash
```
> $CONTAINER_ID$ is container id, use docker container ps to view
