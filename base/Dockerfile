ARG UBUNTU_VERSION
FROM ubuntu:${UBUNTU_VERSION}

ENV UBUNTU_VERSION ${UBUNTU_VERSION}

RUN apt-get update && apt-get install -y    \
    --no-install-recommends                 \
    ca-certificates                         \
    make                                    \
    libc6-dev                               \
    cmake                                   \
    git                                     \
    ssh-client                              \
    qt5-default                             \
    qttools5-dev-tools                      \
    perl                                    \
    libxml2-utils                           \
    libxml-perl                             \
    liblist-moreutils-perl                  \
&& rm -rf /var/lib/apt/lists/*

# On Ubuntu 14.04 Qt5LinguistToolsConfig.cmake is provided by qttools5-dev, in
# later versions it was moved to qttools5-dev-tools. lupdate itself is always
# provided by qttools5-dev-tools
RUN if [ "$UBUNTU_VERSION" = "14.04" ]; then  \
    apt-get update && apt-get install -y      \
        qttools5-dev                          \
;fi                                           \
&& rm -rf /var/lib/apt/lists/*

ADD ccache.sha256 /tmp/ccache/ccache.sha256
ADD http://archive.ubuntu.com/ubuntu/pool/main/c/ccache/ccache_3.3.4-1_amd64.deb /tmp/ccache/

RUN cd /tmp/ccache && \
    sha256sum -c ccache.sha256 && \
    dpkg -i ccache_3.3.4-1_amd64.deb && \
    rm -r /tmp/ccache
