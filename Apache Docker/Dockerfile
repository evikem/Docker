FROM ubuntu:trusty

RUN apt-get -y update && apt-get -y install apache2

EXPOSE 80

CMD ["apachectl", "-DFOREGROUND"]