FROM rockylinux:9

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
    org.label-schema.docker.cmd="docker run --rm -it sakurasky/opentofu:1.6.0-beta1-rockylinux-9"

RUN curl https://packagecloud.io/install/repositories/opentofu/tofu/script.rpm.sh?any=true -o /tmp/tofu-repository-setup.sh && \
    bash /tmp/tofu-repository-setup.sh && \
    rm /tmp/tofu-repository-setup.sh

RUN yum install -y tofu-"${OPENTOFU_VERSION/-/'~'}" && \
    yum clean all

RUN mkdir /tofu && \
    mkdir -p /etc/tofu && \
    echo 'localhost' > /etc/tofu/hosts

WORKDIR /tofu

CMD [ "tofu", "--version" ]