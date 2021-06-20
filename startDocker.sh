docker run -d -p 127.0.0.1:3306:3306  --name db -e MARIADB_ROOT_PASSWORD=123456 -d mariadb:latest
docker run --name phpmyadmin -d --link db:db -p 8080:80 phpmyadmin
docker run --name webdev -d  -p 3333:80 -v $PWD/src:/var/www/html php:7.4-apache