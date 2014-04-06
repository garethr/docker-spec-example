FROM ubuntu:12.10
MAINTAINER Gareth Rushgrove "gareth@morethanseven.net"

RUN apt-get -y update
RUN apt-get install nginx -y
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

ENTRYPOINT ["nginx"]
