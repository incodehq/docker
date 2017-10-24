FROM alpine:3.5
MAINTAINER Incode Software, incode.org
RUN apk --update add --no-cache apache2 php5-apache2
RUN mkdir -p /run/apache2
CMD rm -rf /run/apache2/* || true && /usr/sbin/httpd -DFOREGROUND
EXPOSE 80 443
