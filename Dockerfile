FROM app-nx.marcoshssilva.com.br/ubuntu:mantic

USER root

RUN apt-get update && apt-get upgrade -y

RUN apt-get install gnupg -y
RUN apt-get install -y git tree zip unzip tar gzip wget curl net-tools openssh-client telnet mysql-client postgresql-client nano vim iputils-ping
#RUN useradd -m ubuntu
RUN echo 'ubuntu:ubuntu' | chpasswd

USER ubuntu
WORKDIR /home/ubuntu

CMD ["/bin/sleep", "3650d"]
