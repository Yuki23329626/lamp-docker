#!/bin/bash
# Program:
#       The script is used to get apache logs
# History:
# 2021/05/18    nxshen  First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

certbot renew
cp /etc/letsencrypt/live/michaelshen.csie.io/* ./apache/ssl/
