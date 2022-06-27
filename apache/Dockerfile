FROM php:7.3.25-apache-stretch

RUN apt-get update -y
RUN apt-get install -y vim

#RUN apt-get install -y php7.3-mysqlnd
#RUN mkdir /etc/apache2/ssl

# Other PHP7 Extensions
RUN apt-get -y install libsqlite3-dev libsqlite3-0 mysql-client
RUN docker-php-ext-install mysqli

# Enable apache modules
RUN a2enmod rewrite headers

COPY ./conf/.vimrc /root/
COPY ./data/* /var/www/
COPY ./conf/apache2.conf /etc/apache2/
COPY ./conf/000-default.conf /etc/apache2/sites-available/
COPY ./conf/default-ssl.conf /etc/apache2/sites-available/
#COPY ./ssl/* /etc/apache2/ssl/
