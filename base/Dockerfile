ARG UBUNTU_VERSION
FROM ubuntu:${UBUNTU_VERSION}
ARG UBUNTU_VERSION

ENV UBUNTU_VERSION ${UBUNTU_VERSION}
ENV DEBIAN_FRONTEND noninteractive

# Install common dependencies
RUN apt-get update && apt-get install -y    \
    --no-install-recommends                 \
        binutils                            \
        ca-certificates                     \
        ccache                              \
        git                                 \
        gpg                                 \
        libc6-dev                           \
        liblist-moreutils-perl              \
        libxml2-utils                       \
        libxml-perl                         \
        lsb-release                         \
        make                                \
        perl                                \
        software-properties-common          \
        ssh-client                          \
        wget                                \
    && rm -rf /var/lib/apt/lists/*

# Install CMake
ADD install-cmake.sh scripts/
RUN scripts/install-cmake.sh

RUN apt-get update && apt-get install -y    \
        qt5-qmake                           \
        qtbase5-dev                         \
        qttools5-dev-tools                  \
    && rm -rf /var/lib/apt/lists/*
