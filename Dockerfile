ARG VERSION=1.31.0
ARG UID=3001
ARG GID=3001

FROM vaultwarden/server:${VERSION}-alpine

LABEL maintainer="Thien Tran contact@tommytran.io"

ARG UID
ARG GID

RUN apk -U upgrade \
    && apk add libstdc++ \
    && rm -rf /var/cache/apk/*

COPY --from=ghcr.io/polarix-containers/hardened_malloc:latest /install /usr/local/lib/
ENV LD_PRELOAD="/usr/local/lib/libhardened_malloc.so"

RUN adduser -g ${GID} -u ${UID} --disabled-password --gecos "" vaultwarden
USER vaultwarden

ENV ROCKET_PORT=8080
EXPOSE 8080/tcp
