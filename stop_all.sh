#!/bin/bash
# Program:
#	The script used to stop the apache docker container
# History:
# 2020/12/23	nxshen	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

docker stop $(docker ps -aq)

exit 0
