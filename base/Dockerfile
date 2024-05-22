ARG UBUNTU_VERSION
FROM ubuntu:${UBUNTU_VERSION}
ARG UBUNTU_VERSION

ENV UBUNTU_VERSION ${UBUNTU_VERSION}
ENV DEBIAN_FRONTEND noninteractive

# Install CMake
ADD install-cmake.sh scripts/
RUN scripts/install-cmake.sh

# Install common dependencies
RUN apt-get update && apt-get install -y    \
    --no-install-recommends                 \
        binutils                            \
        ccache                              \
        git                                 \
        libc6-dev                           \
        liblist-moreutils-perl              \
        libxml2-utils                       \
        libxml-perl                         \
        make                                \
        perl                                \
        software-properties-common          \
        ssh-client                          \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y    \
        qt5-default                         \
        qttools5-dev-tools                  \
    && rm -rf /var/lib/apt/lists/*
