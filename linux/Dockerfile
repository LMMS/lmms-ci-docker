ARG UBUNTU_VERSION
FROM lmmsci/base:${UBUNTU_VERSION}

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
        libmp3lame-dev          \
        liblilv-dev             \
        libogg-dev              \
        libsamplerate0-dev      \
        libsdl-dev              \
        libsndfile1-dev         \
        libstk0-dev             \
        libvorbis-dev           \
        libxft-dev              \
        libxinerama-dev         \
        lv2-dev                 \
        portaudio19-dev         \
        gcc-multilib            \
        g++-multilib            \
        qt5-default             \
        qtbase5-dev             \
        libqt5x11extras5-dev    \
        libxcb-keysyms1-dev     \
        libxcb-util0-dev        \
        qtbase5-private-dev     \
&& rm -rf /var/lib/apt/lists/*
