ARG UBUNTU_VERSION
FROM ubuntu:${UBUNTU_VERSION}
ARG UBUNTU_VERSION

ENV UBUNTU_VERSION ${UBUNTU_VERSION}
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y    \
    --no-install-recommends                 \
    ca-certificates                         \
    software-properties-common              \
    make                                    \
    libc6-dev                               \
    cmake                                   \
    git                                     \
    ssh-client                              \
    ccache                                  \
    perl                                    \
    libxml2-utils                           \
    libxml-perl                             \
    liblist-moreutils-perl                  \
&& rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y    \
    qt5-default                             \
    qttools5-dev-tools                      \
&& rm -rf /var/lib/apt/lists/*
