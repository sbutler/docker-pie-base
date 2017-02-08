FROM debian:jessie

RUN set -xe \
    && apt-get update && apt-get upgrade -y \
    && apt-get install -y \
        sudo \
        libcgi-pm-perl \
        libio-socket-ssl-perl \
        libipc-run-perl \
        libjson-perl \
        liblog-dispatch-perl \
        libtemplate-perl \
        libtemplate-plugin-xml-perl \
        libtry-tiny-perl \
        libset-object-perl \
        --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*
