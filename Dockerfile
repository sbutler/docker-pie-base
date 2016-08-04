FROM debian:jessie

RUN set -xe \
    && apt-get update && apt-get install -y \
        libio-socket-ssl-perl \
        liblog-dispatch-perl \
        libtemplate-perl \
        libtemplate-plugin-xml-perl \
        libset-object-perl \
        --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*
