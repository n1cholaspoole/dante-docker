FROM alpine:latest

RUN apk add dante-server --no-cache --repository https://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted

RUN rm -rf /var/cache/apk/*

ADD sockd.conf /etc/sockd.conf
ADD docker_entrypoint.sh /docker_entrypoint.sh

ENTRYPOINT ["/docker_entrypoint.sh"]

CMD ["/usr/sbin/sockd"]
