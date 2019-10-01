ARG UBUNTU_VERSION
FROM lmmsci/linux:${UBUNTU_VERSION}

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y    \
    # Needed for AppImage:                  \
    stk                                     \
    wget                                    \
    file									\
    # for vst
    wine1.6                                 \
    wine1.6-dev                             \
&& rm -rf /var/lib/apt/lists/*
