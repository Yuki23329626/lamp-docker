# Dockerfile

It will pull Apache image from docker hub to build the container  
You can choose which version of php-Apache http server you want by changing the tag  

For more information about tags please check [php - Docker Hub](https://hub.docker.com/_/php)  

## conf

The place which stores config file of Apache server.  
It will copy the configuration files you put in the ./conf/ into the container's /etc/apache2/,  
which is the default path of Apache's config file

## ssl

If your project needs to use CA certifications, you can put those files into this directory,  
the port of https is set to 443, you can change the setting in ../docker-compose.yml  

CA files needs to be named as private.key, certificate.crt, and ca_bundle.crt respectively.

## data

Everything you put under the ./data/ will be copied into container's /var/www/html/  
It's the default root of php-apache:7.3 server.  
As for me, I put the relative resources of my web page(php, css, js) in this directory.  
