#FROM centos
FROM ubuntu:18.04
# Author
MAINTAINER yoru722

CMD echo "now running ..."

# apache
RUN yum install -y httpd

