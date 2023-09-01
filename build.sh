#!/bin/bash
# Program:
#	The script is used to build the apache container
# History:
# 2020/09/26	nxshen	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

if [ "$MYSQL_ROOT_PASSWORD" = "" ]
then
  echo "\nYou should set your MYSQL_ROOT_PASSWORD at first"
  echo "\ne.g.: export MYSQL_ROOT_PASSWORD=\"the_password_you_want\"\n"
  exit 0
fi

if [ "$DOMAIN_NAME" = "" ]
then
  echo "\nYou should set your DOMAIN_NAME at first"
  echo "\ne.g.: export DOMAIN_NAME=\"the_domain_name_you_want\"\n"
  exit 0
fi

current=$(date +_%Y-%m-%d-%T -d "+8 hour")

echo "building container..."
docker compose up --build -d > log/log_build$current.log

SSL_crt=$(ls /etc/letsencrypt/archive/$DOMAIN_NAME | grep fullchain1.pem)
SSL_key=$(ls /etc/letsencrypt/archive/$DOMAIN_NAME | grep privkey1.pem)
#SSL_ca=$(ls ./apache/ssl/ | grep ca_bundle.crt)

if [ -z "$SSL_crt" ] || [ -z "$SSL_key" ]
then 
  echo "\nMissing certficate files, it may cause apache server build on failed
If you want to disable the https service,
please modify the configure file ./apache/conf/apache2.conf\n"
fi

exit 0
