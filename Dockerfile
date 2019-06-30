FROM alpine:3.9
MAINTAINER Fluke667 <Fluke667@gmail.com>  
ARG TZ='Europe/Berlin'

# ENV Variables in env.vpnet

RUN mkdir -p ${GOPATH}/src ${GOPATH}/bin
WORKDIR $GOPATH

RUN apk upgrade \
    && apk add bash tzdata rng-tools runit \
    && apk add --virtual .build-deps \
        linux-headers \
        build-base autoconf automake \
        curl curl-dev \
	      nano \
	      go \
	      musl-dev \
	      gcc \
        c-ares-dev \
        libev-dev \
        libtool \
        libsodium-dev \
        mbedtls-dev \
        pcre-dev \
        tar \
        git \
	      nodejs npm \
        ca-certificates \
        iptables ip6tables iptables-dev iproute2 \
	      pptpd \
	      xl2tpd \
	      sqlite sqlite-libs sqlite-dev \
        openssl openssl-dev \
        strongswan \
