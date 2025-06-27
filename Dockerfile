FROM rockylinux:9
LABEL maintainer "maria clara"
RUN dnf -y install httpd
RUN dnf -y install php
CMD /usr/sbin/httpd -D FOREGROUND
WORKDIR /var/www/html
COPY index.html /var/www/html
EXPOSE 80
