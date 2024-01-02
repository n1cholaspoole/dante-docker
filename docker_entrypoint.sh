#!/bin/sh

# Create users
if [ "$DANTE_USER" ]; then
  adduser -D -H -s /sbin/nologin $DANTE_USER
  echo $DANTE_USER:$DANTE_PASSWORD | chpasswd
  echo "tg://socks?server="${DANTE_HOST}"&port=1080&user="${DANTE_USER}"&pass="${DANTE_PASSWORD}
fi

exec "$@"
