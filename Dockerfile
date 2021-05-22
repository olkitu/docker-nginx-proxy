FROM nginx:1.20.0-alpine

ENV PROXY_PASS=https://1.1.1.1

RUN apk add --no-cache moreutils gettext

COPY default.conf /etc/nginx/conf.d/default.conf
COPY variables.sh /docker-entrypoint.d/