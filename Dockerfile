FROM ubuntu:latest

RUN apt-get update
RUN apt-get install nginx -y

COPY page.html /var/www/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
