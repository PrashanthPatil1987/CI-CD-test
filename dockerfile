CMD ["bash"]

LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>

ENV NGINX_VERSION=1.25.4

ENV NJS_VERSION=0.8.3

ENV PKG_RELEASE=1~bookworm

RUN /bin/sh -c set -x

COPY docker-entrypoint.sh / # buildkit

COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit

COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit

COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit

