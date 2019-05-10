#FROM centos
FROM centos:centos7
# Author
MAINTAINER yoru722

CMD echo "now running ..."

# apache
RUN yum install -y httpd

