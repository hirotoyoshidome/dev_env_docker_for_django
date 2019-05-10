#FROM centos
FROM hnakamur/centos 
RUN /bin/echo hi
RUN /bin/cat /etc/redhat-release
