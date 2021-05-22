# Docker Nginx-Proxy

Simple Nginx Reverse Proxy in Docker. Based official [Nginx](https://hub.docker.com/_/nginx) image.

## Usage

Use `ENDPOINT` environment variable to set endpoint address

```
docker run -e PROXY_PASS=https://1.1.1.1 -p 80:80 olkitu/docker-nginx-proxy
```

Or deploy to Swarm or locally with Compose

```yaml
version: '3.6'
services:
  nginx-proxy:
    image: olkitu/docker-nginx-proxy
    ports:
    - 80:80
    environment:
      PROXY_PASS: https://1.1.1.1
```