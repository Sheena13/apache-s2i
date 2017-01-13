FROM centos:7
EXPOSE 8080
#Install apache
USER root
RUN yum -y install httpd && yum clean all
RUN sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf
RUN echo 'foo bar' > /var/www/html/index.html
RUN chmod -R a+rwx /run/httpd /etc/httpd/logs
USER nobody
CMD /usr/sbin/httpd -DFOREGROUND
