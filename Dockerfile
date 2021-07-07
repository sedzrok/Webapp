FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
EXPOSE 80
ADD static-website-example/ /var/www/html/
CMD ["nginx", "-g", "daemon off;"]
