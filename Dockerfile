FROM ubuntu:18.04

RUN apt-get update && apt-get install -y curl unzip git jq openssh-server

RUN ["bin/sh", "-c", "mkdir -p /src"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
