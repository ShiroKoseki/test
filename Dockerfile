FROM centos:centos6.6
MAINTAINER S.Koseki

RUN yum -y install httpd --enablerepo=wing
RUN chmod -R 644 /var/www/html/*

ADD init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh
CMD ["/usr/local/bin/init.sh"]
