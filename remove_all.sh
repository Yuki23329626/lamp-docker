docker stop $(docker ps -aq)
docker system prune -f


docker rmi $(docker images -q)
docker volume rm $(docker volume ls -q)
