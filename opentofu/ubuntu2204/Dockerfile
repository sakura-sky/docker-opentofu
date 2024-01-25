FROM ubuntu:22.04

# Args
ARG OPENTOFU_VERSION
SHELL ["/bin/bash", "-c"]

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
    org.label-schema.docker.cmd="docker run --rm -it sakurasky/opentofu:1.6.1-ubuntu-2204"

RUN DEBIAN_FRONTEND=noninteractive && \
    apt update && \
    apt install -y curl && \
    curl -s https://packagecloud.io/install/repositories/opentofu/tofu/script.deb.sh?any=true -o /tmp/tofu-repository-setup.sh && \
    bash /tmp/tofu-repository-setup.sh && \
    rm /tmp/tofu-repository-setup.sh

RUN apt-get install -y tofu="${OPENTOFU_VERSION/-/'~'}" && \
    apt-get clean

RUN mkdir /tofu && \
    mkdir -p /etc/tofu && \
    echo 'localhost' > /etc/tofu/hosts

WORKDIR /tofu

CMD [ "tofu", "--version" ]