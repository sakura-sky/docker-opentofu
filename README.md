# Opentofu
Opentofu inside Docker to integrate within your CI/CD pipeline.  

https://github.com/opentofu/opentofu


![Image Size](https://img.shields.io/docker/pulls/sakurasky/opentofu "Image Size") ![Image Size](https://img.shields.io/docker/image-size/sakurasky/opentofu/latest "Image Size")

# Current Opentofu Versions

Latest updated Opentofu versions: 

* Opentofu 1.6.0: rc1

> Starting from version 1.6.0 and its official stable release in December 2023, minor releases will automatically be pushed and not published as new docker tags.

### Opentofu (1.6.0)

This includes `opentofu` on different base images.

| Base Image (↓) \ Ansible Version (→) | Dockerfile                                                                                                        | 1.6.0-rc1                        |
|--------------------------------------|-------------------------------------------------------------------------------------------------------------------|-------------------------------------|
| Latest                               | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/alpine318/Dockerfile)            | `latest`                            |
| Alpine                               | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/alpine318/Dockerfile)            | `alpine`                            |
| Debian                               | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/debian-bookworm-slim/Dockerfile) | `debian`                            |
| Rockylinux                           | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/rocky9/Dockerfile)               | `rockylinux`                        |
| Ubuntu                               | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/ubuntu2204/Dockerfile)           | `ubuntu`                            |
| Alpine 3.16                          | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/alpine316/Dockerfile)            | `1.6.0-rc1-alpine-3.16`          |
| Alpine 3.17                          | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/alpine317/Dockerfile)            | `1.6.0-rc1-alpine-3.17`          |
| Alpine 3.18                          | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/alpine318/Dockerfile)            | `1.6.0-rc1-alpine-3.18`          |
| Bookworm (Debian 12)                 | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/debian-bookworm/Dockerfile)      | `1.6.0-rc1-debian-bookworm`      |
| Bookworm Slim (Debian 12)            | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/debian-bookworm-slim/Dockerfile) | `1.6.0-rc1-debian-bookworm-slim` |
| Bullseye (Debian 11)                 | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/debian-bullseye/Dockerfile)      | `1.6.0-rc1-debian-bullseye`      |
| Bullseye Slim (Debian 11)            | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/debian-bullseye-slim/Dockerfile) | `1.6.0-rc1-debian-bullseye-slim` |
| Rocky Linux 8                        | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/rocky8/Dockerfile)               | `1.6.0-rc1-rockylinux-8`         |
| Rocky Linux 9                        | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/rocky9/Dockerfile)               | `1.6.0-rc1-rockylinux-9`         |
| Ubuntu 20.04                         | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/ubuntu2004/Dockerfile)           | `1.6.0-rc1-ubuntu-20.04`         |
| Ubuntu 22.04                         | [Dockerfile](https://github.com/sakura-sky/docker-opentofu/blob/main/opentofu/ubuntu2204/Dockerfile)           | `1.6.0-rc1-ubuntu-22.04`         |


# Usage
## Get the image
```
docker pull sakurasky/opentofu:latest
```
## Pull a specific image
```
docker pull sakurasky/opentofu:[TAG]
```

## Simple run
```
docker run --rm -it sakurasky/opentofu:latest /bin/sh
```

## Run on current directory
```
docker run --rm -it sakurasky/opentofu:latest tofu plan
```

## Run using GCP credentials
```
docker run --rm -it -v $(pwd):/tofu -v ~/.config/gcloud:/root/.config/gcloud sakurasky/opentofu:latest tofu init
```

# Maintainer

* Maintained by [Sakura Sky](https://sakurasky.com/)