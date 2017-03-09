FROM mhart/alpine-node:6.10.0
RUN apk add --no-cache wget ca-certificates \
    && mkdir /opt \
    && wget -qO- https://yarnpkg.com/latest.tar.gz | tar xz -C /opt \
    && apk del wget ca-certificates