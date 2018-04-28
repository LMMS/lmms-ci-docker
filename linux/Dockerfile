ARG UBUNTU_VERSION
FROM lmmsci/base:${UBUNTU_VERSION}

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
        libwine-dev             \
        libwine-dev:i386        \
        wine64-tools            \
        gcc-multilib            \
        g++-multilib            \
        qt5-default             \
        qtbase5-dev             \
        libqt5x11extras5-dev    \
        libxcb-keysyms1-dev     \
        libxcb-util0-dev        \
        qtbase5-private-dev     \
&& rm -rf /var/lib/apt/lists/*
