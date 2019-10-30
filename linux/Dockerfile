ARG UBUNTU_VERSION
FROM lmmsci/base:${UBUNTU_VERSION}
ARG UBUNTU_VERSION

RUN dpkg --add-architecture i386

RUN apt-get update -qq &&       \
    apt-get install -y          \
    --no-install-recommends     \
        ccache                  \
        fluid                   \
        libasound2-dev          \
        libc6-dev-i386          \
        libfftw3-dev            \
        libfltk1.3-dev          \
        libfluidsynth-dev       \
        libgig-dev              \
        libjack-dev             \
        libogg-dev              \
        libsamplerate0-dev      \
        libsdl-dev              \
        libsndfile1-dev         \
        libstk0-dev             \
        libvorbis-dev           \
        libxft-dev              \
        libxinerama-dev         \
        portaudio19-dev         \
        gcc-multilib            \
        g++-multilib            \
        libxcb-keysyms1-dev     \
        libxcb-util0-dev        \
&& rm -rf /var/lib/apt/lists/*

RUN if [ "$UBUNTU_VERSION" = "18.04" ]; then \
    apt-get update -qq &&                     \
    apt-get install -y                        \
    --no-install-recommends                   \
        libqt5x11extras5-dev                  \
        qtbase5-private-dev                   \
;else                                         \
    apt-get update -qq &&                     \
    apt-get install -y                        \
        qt56x11extras                         \
;fi                                           \
&& rm -rf /var/lib/apt/lists/*
