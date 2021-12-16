FROM alpine:3.15

RUN apk add --no-cache --update wireguard-tools iputils wget curl

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]