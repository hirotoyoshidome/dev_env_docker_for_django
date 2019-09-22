#FROM centos
FROM ubuntu:18.04
# Author
MAINTAINER yoru722

CMD echo "now running ..."

RUN apt update && \
    apt install -y wget \
                   sysvinit-utils \
                   apache2 \
                   mysql-server \
                   python3 \
                   python3-pip && \
    pip3 install -U django

#RUN mysql_secure_installation
# work dir
WORKDIR /opt

# mount setting
RUN mkdir /work
VOLUME /work

