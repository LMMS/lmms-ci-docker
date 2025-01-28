ARG UBUNTU_VERSION
FROM ghcr.io/lmms/linux:${UBUNTU_VERSION}

ENV DEBIAN_FRONTEND noninteractive

# AppImage dependencies
RUN apt-get update && apt-get install -y    \
    --no-install-recommends                 \
        file                                \
        stk                                 \
        wget                                \
    && rm -rf /var/lib/apt/lists/*

# Add WineHQ repo
RUN mkdir -pm755 /etc/apt/keyrings \
    && wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key \
    && UBUNTU_CODENAME=$(lsb_release -c -s) \
    && wget -NP /etc/apt/sources.list.d/ "https://dl.winehq.org/wine-builds/ubuntu/dists/${UBUNTU_CODENAME}/winehq-${UBUNTU_CODENAME}.sources"

# VST dependencies
RUN apt-get update && apt-get install -y    \
    --install-recommends                    \
        winehq-stable                       \
        wine-stable-dev                     \
    && rm -rf /var/lib/apt/lists/*
