FROM ubuntu:19.04

RUN ["/bin/sh", "-c", "apt install bash ca-certificates curl git jq openssh"]

RUN ["bin/sh", "-c", "mkdir -p /src"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
