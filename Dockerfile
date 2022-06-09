FROM public.ecr.aws/lts/ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN set -xe \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        jq \
        libcgi-pm-perl \
        libio-socket-ssl-perl \
        libipc-run-perl \
        libjson-perl \
        liblog-dispatch-perl \
        libtemplate-perl \
        libtemplate-plugin-xml-perl \
        libtry-tiny-perl \
        libset-object-perl \
        libyaml-0-2 libyaml-dev \
        logrotate \
        python3 \
        python3-pip \
        python3-setuptools \
        sudo \
        unzip \
    && rm -rf /var/lib/apt/lists/*

RUN set -xe \
    && cd /tmp \
    && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -fr awscliv2.zip aws

COPY etc/ /etc

RUN rm /etc/logrotate.d/*
