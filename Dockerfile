FROM ubuntu:latest

USER root

RUN apt-get update && apt-get upgrade -y

RUN apt-get install gnupg -y
RUN apt-get install -y git tree zip unzip tar gzip wget curl net-tools openssh-client telnet
RUN apt-get install -y mysql-client postgresql-client
RUN apt-get install -y nano vim
RUN apt-get install -y iputils-ping
RUN apt-get install -y rar unrar

RUN useradd -m ubuntu
RUN echo 'ubuntu:ubuntu' | chpasswd

USER ubuntu
WORKDIR /home/ubuntu

CMD ["/bin/sleep", "3650d"]