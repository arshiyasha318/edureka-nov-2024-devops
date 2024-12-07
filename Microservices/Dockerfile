FROM httpd:latest
RUN apt-get update -y
RUN apt-get install vim -y
COPY index1.html /usr/local/apache2/htdocs


FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install apache2 -y
ADD index1.html /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
