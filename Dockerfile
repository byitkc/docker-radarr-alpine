FROM alpine:3.11.5

LABEL maintainer="brandon@byitkc.com"

RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk add --update mono@testing  \
    && rm -rf /var/cache/apk/*

COPY Radarr /opt

EXPOSE 7878

ENTRYPOINT ["/usr/bin/mono", "/opt/Radarr/Radarr.exe"]