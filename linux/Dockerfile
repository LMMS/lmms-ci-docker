ARG UBUNTU_VERSION
FROM ghcr.io/lmms/base:${UBUNTU_VERSION}

ENV DEBIAN_FRONTEND noninteractive

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
        libjack-jackd2-dev      \
        liblilv-dev             \
        libmp3lame-dev          \
        libogg-dev              \
        libsamplerate0-dev      \
        libsdl2-dev             \
        libsndfile1-dev         \
        libstk-dev              \
        libsuil-dev             \
        libvorbis-dev           \
        libxft-dev              \
        libxinerama-dev         \
        lv2-dev                 \
        portaudio19-dev         \
        gcc-multilib            \
        g++-multilib            \
        qtbase5-dev-tools       \
        qtbase5-private-dev     \
        qttools5-dev-tools      \
        libqt5svg5-dev          \
        libqt5x11extras5-dev    \
        libx11-xcb-dev          \
        libxcb-keysyms1-dev     \
        libxcb-util0-dev        \
    && rm -rf /var/lib/apt/lists/*
