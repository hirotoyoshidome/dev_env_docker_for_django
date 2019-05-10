#FROM centos
FROM ubuntu:18.04
# Author
MAINTAINER yoru722

CMD echo "now running ..."

# apache
RUN apt-get update && apt-get install -y wget
RUN apt-get install -y sysvinit-utils

