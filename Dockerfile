FROM alpine:3

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh lxd"]

RUN ["bin/sh", "-c", "mkdir -p /src"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
