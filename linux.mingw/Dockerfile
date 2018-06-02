FROM lmmsci/base:18.04

RUN apt-get update && apt-get install -y \
    --no-install-recommends              \
        dirmngr                          \
        gnupg                            \
&& rm -rf /var/lib/apt/lists/*

RUN echo "deb http://ppa.launchpad.net/tobydox/mingw-w64/ubuntu artful main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 72931B477E22FEFD47F8DECE02FE5F12ADDE29B2

RUN apt-get update && apt-get install -y    \
    --force-yes --no-install-recommends     \
        lsb-release                         \
        nsis                                \
        cloog-isl                           \
        libmpc3                             \
        mingw-w64                           \
        mingw-w64-tools                     \
        binutils-mingw-w64                  \
        fftw-mingw-w64                      \
        flac-mingw-w64                      \
        fltk-mingw-w64                      \
        fluidsynth-mingw-w64                \
        gcc-mingw-w64                       \
        glib2-mingw-w64                     \
        lame-mingw-w64                      \
        libgig-mingw-w64                    \
        libsamplerate-mingw-w64             \
        libsndfile-mingw-w64                \
        libsoundio-mingw-w64                \
        libvorbis-mingw-w64                 \
        libz-mingw-w64-dev                  \
        portaudio-mingw-w64                 \
        qt5base-mingw-w64                   \
        sdl-mingw-w64                       \
        stk-mingw-w64                       \
        curl                                \
&& rm -rf /var/lib/apt/lists/*
