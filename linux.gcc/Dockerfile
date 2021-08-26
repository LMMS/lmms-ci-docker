ARG UBUNTU_VERSION
FROM lmmsci/linux:${UBUNTU_VERSION}

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y    \
    # Needed for AppImage:                  \
    stk                                     \
    wget                                    \
    file									\
    # for vst
    libwine-dev                             \
    libwine-dev:i386                        \
    wine64-tools                            \
&& rm -rf /var/lib/apt/lists/*
