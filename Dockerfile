FROM gliderlabs/alpine:latest
MAINTAINER Chih-Hao Tsai <a968574123@hotmail.com>
RUN apk --update add apache2
EXPOSE 80 8080
ENTRYPOINT ["/usr/sbin/apachectl", "-f", "/etc/apache2/httpd.conf", "-e", "info", "-DFOREGROUND"]
#CMD ["-D"]
