#!/bin/bash
# Program:
#	The script used to stop the apache docker container
# History:
# 2020/12/23	nxshen	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

container_id_1=`docker ps | grep lamp-docker_apache | cut -c1-12`
container_id_2=`docker ps | grep lamp-docker_db | cut -c1-12`
container_id_3=`docker ps | grep lamp-docker_adminer | cut -c1-12`

echo "stopping containers..."
echo "container_id_1 = ${container_id_1}"
echo "container_id_2 = ${container_id_2}"
echo "container_id_3 = ${container_id_3}"

docker stop $container_id_1
docker stop $container_id_2
docker stop $container_id_3

exit 0
