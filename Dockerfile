FROM ubuntu

RUN apt-get -y update && apt-get -y install nginx
COPY 2048 /usr/share/nginx/html

COPY default.conf /etc/nginx/sites-available/default

EXPOSE 8033/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]


