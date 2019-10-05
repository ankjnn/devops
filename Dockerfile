FROM ubuntu

RUN apt-get update -y
RUN apt-get -y install apache2

ADD ./website /var/www/html/website

ENTRYPOINT apachectl -D FOREGROUND

ENV name ankit
