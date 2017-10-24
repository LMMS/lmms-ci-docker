ARG UBUNTU_VERSION
FROM ubuntu:${UBUNTU_VERSION}

RUN apt-get update && apt-get install -y    \
    --no-install-recommends                 \
    ca-certificates                         \
    cmake                                   \
    git                                     \
    ssh-client                              \
    qt5-default                             \
    qtbase5-dev                             \
    qttools5-dev-tools                      \
&& rm -rf /var/lib/apt/lists/*
