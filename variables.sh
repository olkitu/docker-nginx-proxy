#!/bin/sh

ENV_VARIABLES=$(awk 'BEGIN{for(v in ENVIRON) print "$"v}')

for FILE in /etc/nginx/conf.d/default.conf
do
    envsubst "$ENV_VARIABLES" <$FILE | sponge $FILE
done