FROM centos:7

#Install apache
USER root
RUN yum -y install httpd
EXPOSE 80
CMD /usr/sbin/httpd -DFOREGROUND
