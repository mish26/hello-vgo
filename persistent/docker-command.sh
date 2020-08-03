docker image build -t example/mysql-data:latest .
docker container run -d --name mysql-data example/mysql-data:latest
docker container run -d --rm --name mysql \
-e "MYSQL_ALLOW_EMPTY_PASSWORD=yes" \
-e "MYSQL_DATABASE=volume_test" \
-e "MYSQL_USER=example" \
-e "MYSQL_PASSWORD=example" \
--volumes-from mysql-data \
mysql5.7

docker container exec -it mysql mysql -u root -p volume_test
