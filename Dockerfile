FROM mhart/alpine-node:base-6.9.1
RUN apk add --no-cache wget ca-certificates \
    && mkdir /opt \
    && cd /opt \
    && wget -qO- https://yarnpkg.com/latest.tar.gz | tar xz \
    && apk del wget ca-certificates
    && ln -s /opt/dist/bin/yarn /usr/bin/yarn