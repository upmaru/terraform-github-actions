FROM ubuntu:19.04

RUN ["apt-get install -y curl git jq openssh"]

RUN ["bin/sh", "-c", "mkdir -p /src"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
