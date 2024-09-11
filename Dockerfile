FROM httpd:2.4
COPY ./web.html /usr/local/apache2/htdocs/
RUN echo "nameserver 192.168.0.3" >> /etc/resolve.conf
RUN echo "nameserver 8.8.8.8" >> /etc/resolve.conf
