FROM debian

RUN apt-get update && \
    apt-get install -y wget && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /bin
RUN wget "https://github.com/jqlang/jq/releases/download/jq-1.7.1/jq-linux-amd64" && chmod 755 jq-linux-amd64
  
WORKDIR /data

CMD ["/bin/jq-linux-amd64"]
