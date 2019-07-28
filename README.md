# Yet another typical PHP + NGINX + MySQL docker config.

Just like JS frameworks, this is _another_ PHP + NGINX + MySQL Docker configuration that the world doesn't need.  Mostly done and shared for my own ends, but feel free to fork and rename containers if it looks of use :v:

## Install

1. Create your local network space:
```
docker network create andrewgatenby-network
```

2. Build and start the Docker containers as a daemon service:
```
docker-compose -p andrewgatenby-app up -d
```
