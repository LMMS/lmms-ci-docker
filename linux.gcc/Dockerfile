ARG UBUNTU_VERSION
FROM lmmsci/lmms-ci-linux:${UBUNTU_VERSION}

RUN apt-get update && apt-get install -y    \
    ccache                                  \
    gcc-multilib                            \
    g++-multilib                            \
    # Needed for AppImage:                  \
    stk                                     \
    wget                                    \
&& rm -rf /var/lib/apt/lists/*
