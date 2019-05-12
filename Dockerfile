#FROM centos
FROM ubuntu:18.04
# Author
MAINTAINER yoru722

CMD echo "now running ..."

# wget
RUN apt update && apt install -y wget

# service
RUN apt install -y sysvinit-utils

# apache
RUN apt install -y apache2

# mysql
RUN apt install -y mysql-server
#RUN mysql_secure_installation

# python3(now 3.6.7)
RUN apt install -y python3 python3-pip
# Django
RUN pip3 install -U django

# work dir
WORKDIR /opt

# mount setting
RUN mkdir /work
VOLUME /work

