FROM alpine:3.18

# Args
ARG OPENTOFU_VERSION

# Labels.
LABEL maintainer="florianv@sakurasky.com" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.name="sakurasky/opentofu" \
    org.label-schema.description="Opentofu inside docker" \
    org.label-schema.url="https://github.com/sakura-sky/docker-opentofu" \
    org.label-schema.vcs-url="https://github.com/sakura-sky/docker-opentofu" \
    org.label-schema.vendor="Sakura Sky" \
    org.label-schema.docker.cmd="docker run --rm -it sakurasky/opentofu:1.6.0-rc1-alpine-3.18"

RUN apk add opentofu --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing/ && \
    apk add wget && \
    wget https://github.com/opentofu/opentofu/releases/download/v${OPENTOFU_VERSION}/tofu_${OPENTOFU_VERSION}_amd64.apk && apk add --allow-untrusted --force-overwrite tofu_${OPENTOFU_VERSION}_amd64.apk && \
    apk del wget && \
    rm -rf /var/cache/apk/*

RUN mkdir /tofu && \
    mkdir -p /etc/tofu && \
    echo 'localhost' > /etc/tofu/hosts

WORKDIR /tofu

CMD [ "tofu", "--version" ]