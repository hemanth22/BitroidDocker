FROM centos
MAINTAINER Bitra Hemanth <hemanthbitra@bitroid.in>
RUN yum -y install httpd epel-release; yum -y install git;git clone https://github.com/hemanth22/Development_hemanthindexpage.git;cp -rf Development_hemanthindexpage/* /var/www/html/
EXPOSE 80
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
