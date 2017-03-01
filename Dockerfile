FROM everydayhero/bucky:current
MAINTAINER Ivan Valdes <ivan@vald.es>

ENV NGINX_VERSION 1.8.1-1~jessie
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 \
	&& echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get install -y ca-certificates nginx=${NGINX_VERSION} gettext-base supervisor locales vim python-pip \
	&& rm -rf /var/lib/apt/lists/* \
	&& rm -rf /etc/nginx/conf.d/* 

EXPOSE 8127

COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/serve .
COPY files/certs /etc/nginx/certs
