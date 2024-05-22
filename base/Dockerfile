ARG UBUNTU_VERSION
FROM ubuntu:${UBUNTU_VERSION}
ARG UBUNTU_VERSION

ENV UBUNTU_VERSION ${UBUNTU_VERSION}
ENV DEBIAN_FRONTEND noninteractive

# Kitware APT repo for latest CMake --- See: https://apt.kitware.com/
RUN apt-get update && apt-get install -y    \
    --no-install-recommends                 \
        ca-certificates                     \
        gpg                                 \
        lsb-release                         \
        wget                                \
    && rm -rf /var/lib/apt/lists/*
RUN test -f /usr/share/doc/kitware-archive-keyring/copyright || \
    wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null \
    | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null
RUN echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -c -s) main" \
    | tee /etc/apt/sources.list.d/kitware.list >/dev/null \
    && apt-get update
RUN test -f /usr/share/doc/kitware-archive-keyring/copyright || \
    rm /usr/share/keyrings/kitware-archive-keyring.gpg
RUN apt-get install kitware-archive-keyring

# Install common dependencies
RUN apt-get update && apt-get install -y    \
    --no-install-recommends                 \
        binutils                            \
        ccache                              \
        cmake                               \
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
