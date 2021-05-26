# Important command with MySQL


1. Inquiring your password of mysql(in your physical environment)    
```bash
echo $MYSQL_ROOT_PASSWORD
```
2. Attach to the bash of mariadb container  
```bash
container_id=`docker ps | grep mariadb | cut -c1-12`
docker exec -it $container_id /bin/bash
```
3. Get into command line interface of mariadb    
```bash
# username is "root"
mysql --local-infile -u root -p 'pi_parking_monitor' --default-character-set=utf8mb4
# you will need to type your mysql root password later  
```
## Note
1. 不知道為啥 adminer 不能處理 primary key type 為 varchar 的 資料  
在 create table 的時候會出問題  
可能要考慮在 mysql 的 cli 


