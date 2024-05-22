ARG UBUNTU_VERSION
FROM ghcr.io/lmms/linux:${UBUNTU_VERSION}

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y    \
    --no-install-recommends                 \
# Needed for AppImage:
        stk                                 \
        wget                                \
        file                                \
# Needed for VST:
        libwine-dev                         \
        libwine-dev:i386                    \
        wine64-tools                        \
    && rm -rf /var/lib/apt/lists/*
