FROM ubuntu:14.04

WORKDIR /app
RUN apt-get update -y 
RUN apt-get install apache2 -y
    
COPY . index.html /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]