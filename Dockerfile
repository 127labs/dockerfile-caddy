FROM alpine:latest

MAINTAINER Imran Ismail <imran@127labs.com>

RUN apk update && apk add ca-certificates wget

RUN wget -qO- https://getcaddy.com | sh

EXPOSE 80 443 2015

WORKDIR /srv

CMD ["caddy", "-http2=false"]
