#!/bin/bash
# Temp until moved to gitlab pipeline
set -eEuoa pipefail



export ROOT_PATH=$PWD
export OPENTOFU_VERSION=1.6.0-rc1


# docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:$OPENTOFU_VERSION-alpine-3.16" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/alpine316 -q
# docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:$OPENTOFU_VERSION-alpine-3.17" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/alpine317 -q
# docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:$OPENTOFU_VERSION-alpine-3.18" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/alpine318 -q  
# docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:$OPENTOFU_VERSION-alpine" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/alpine318 -q  
# docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:$OPENTOFU_VERSION-debian-bookworm" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/debian-bookworm -q  
# docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:$OPENTOFU_VERSION-debian-bookworm-slim" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/debian-bookworm-slim -q 
# docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:$OPENTOFU_VERSION-debian-bullseye" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/debian-bullseye -q  
# docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:$OPENTOFU_VERSION-debian-bullseye-slim" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/debian-bullseye-slim -q
# docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:$OPENTOFU_VERSION-debian" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/debian-bookworm-slim -q  
# docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:$OPENTOFU_VERSION-rockylinux-8" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/rocky8 -q  
# docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:$OPENTOFU_VERSION-rockylinux-9" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/rocky9 -q  
# docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:$OPENTOFU_VERSION-rockylinux" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/rocky9 -q  
# docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:$OPENTOFU_VERSION-ubuntu-2004" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/ubuntu2004 -q  
# docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:$OPENTOFU_VERSION-ubuntu-2204" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/ubuntu2204 -q  
#docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:$OPENTOFU_VERSION-ubuntu" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/ubuntu2204 -q  
docker buildx build --push --platform linux/amd64,linux/arm64 -t "sakurasky/opentofu:latest" --build-arg OPENTOFU_VERSION=$OPENTOFU_VERSION opentofu/alpine318 -q  
