FROM ubuntu:latest

LABEL DevOps="Fazila"

RUN apt update && \
    apt install apache2 -y && \
    apt clean

    
EXPOSE 80
   
COPY ./tommy/ /var/www/html/

CMD ["apachectl" , "-D" , "FOREGROUND"]     
