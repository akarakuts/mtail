FROM ubuntu:18.04
RUN apt update && apt install curl -y \
  &&  curl -sLo /usr/local/bin/mtail https://github.com/google/mtail/releases/download/v3.0.0-rc38/mtail_v3.0.0-rc38_linux_amd64 \
  && chmod +x /usr/local/bin/mtail
ENTRYPOINT ["/usr/local/bin/mtail", "-logtostderr"]
