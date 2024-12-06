ARG UID=3001
ARG GID=3001

FROM ghcr.io/dani-garcia/vaultwarden:testing-alpine

LABEL maintainer="Thien Tran contact@tommytran.io"

ARG UID
ARG GID

RUN apk -U upgrade \
    && apk add libstdc++ \
    && rm -rf /var/cache/apk/*

RUN addgroup -g ${GID} vaultwarden \
    && adduser -g ${GID} --ingroup vaultwarden --disabled-password --system vaultwarden
USER vaultwarden

COPY --from=ghcr.io/polarix-containers/hardened_malloc:latest /install /usr/local/lib/
ENV LD_PRELOAD="/usr/local/lib/libhardened_malloc.so"

ENV ROCKET_PORT=8080
EXPOSE 8080/tcp