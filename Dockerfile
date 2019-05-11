#FROM centos
FROM ubuntu:18.04
# Author
MAINTAINER yoru722

CMD echo "now running ..."

# wget
RUN apt-get update && apt-get install -y wget

# service
RUN apt-get install -y sysvinit-utils

# apache
RUN apt-get install -y apache2

# mysql
RUN apt-get install -y mysql-server
#RUN mysql_secure_installation


