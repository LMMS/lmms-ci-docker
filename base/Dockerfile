ARG UBUNTU_VERSION
FROM ubuntu:${UBUNTU_VERSION}
ARG UBUNTU_VERSION

ENV UBUNTU_VERSION ${UBUNTU_VERSION}

RUN apt-get update && apt-get install -y    \
    --no-install-recommends                 \
    ca-certificates                         \
    software-properties-common              \
    make                                    \
    libc6-dev                               \
    cmake                                   \
    git                                     \
    ssh-client                              \
    perl                                    \
    libxml2-utils                           \
    libxml-perl                             \
    liblist-moreutils-perl                  \
&& rm -rf /var/lib/apt/lists/*

RUN if [ "$UBUNTU_VERSION" = "18.04" ]; then           \
    apt-get update && apt-get install -y               \
        qt5-default qttools5-dev-tools                 \
;else                                                  \
    add-apt-repository ppa:beineri/opt-qt563-xenial && \
    apt-get update && apt-get install -y               \
        qt56base qt56tools                             \
;fi                                                    \
&& rm -rf /var/lib/apt/lists/*

ADD ccache.sha256 /tmp/ccache/ccache.sha256
ADD http://archive.ubuntu.com/ubuntu/pool/main/c/ccache/ccache_3.4.1-1_amd64.deb /tmp/ccache/

RUN cd /tmp/ccache && \
    sha256sum -c ccache.sha256 && \
    dpkg -i ccache_3.4.1-1_amd64.deb && \
    rm -r /tmp/ccache
