FROM phpmyadmin/phpmyadmin

LABEL maintainer="Gal Birkman, Devops Engineer. galbirkman@gmail.com"

ENV CERT_VALID_DAYS=3650

COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf

RUN mkdir /etc/apache2/ssl && \
    openssl req -x509 -nodes -days $CERT_VALID_DAYS -newkey rsa:2048 -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=${HOSTNAME}" -keyout /etc/apache2/ssl/apache.key -out /etc/apache2/ssl/apache.crt &&\
    a2enmod ssl

COPY ./config.inc.php /etc/phpmyadmin/config.inc.php