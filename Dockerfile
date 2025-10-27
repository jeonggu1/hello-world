FROM ubuntu
ENV path=/ver/www/html
RUN apt-get update && apt-get install apache2 -y
ADD my-site.tar $path
ENTRYPOINT ["apachectl"]
CMD ["-D", "FOREGROUND"]
