# Yet another typical PHP + NGINX + MySQL docker config.

Just like JS frameworks, this is _another_ PHP + NGINX + MySQL Docker configuration that the world doesn't need.  Mostly done and shared for my own ends, but feel free to fork and rename containers if it looks of use :v:

## Containers

- PHP 7.3
- MySQL 8
- NGINX

## Install

1. Any database creation/migration SQL commands can be added into `docker/mysql/init.sql` and will be used when building the MySQL container.

2. Create your local network space:
```
docker network create andrewgatenby-network
```

3. Build and start the Docker containers as a daemon service:
```
docker-compose -p andrewgatenby-app up -d
```

4. All done - visit http://0.0.0.0:8888 in your browser to run your PHP app.  MySQL connection details look like this:
  - Host: 127.0.0.1
  - User: root
  - Password: secret
  - Port: 33306
