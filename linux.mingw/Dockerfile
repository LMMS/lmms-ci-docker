FROM ghcr.io/lmms/base:20.04

RUN apt-get update && apt-get install -y \
    --no-install-recommends              \
        dirmngr                          \
        gnupg                            \
&& rm -rf /var/lib/apt/lists/*

RUN echo "deb http://ppa.launchpad.net/tobydox/mingw-w64/ubuntu focal main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 72931B477E22FEFD47F8DECE02FE5F12ADDE29B2

RUN apt-get update && apt-get install -y    \
    --force-yes --no-install-recommends     \
        nsis                                \
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
        qt5svg-mingw-w64                    \
        sdl2-mingw-w64                      \
        stk-mingw-w64                       \
        file                                \
&& rm -rf /var/lib/apt/lists/*

# Work around https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=930492
# FIXME remove once we upgrade to 22.04
ADD mingw-w64-tools.sha256 /tmp/mingw-w64-tools/mingw-w64-tools.sha256
ADD http://archive.ubuntu.com/ubuntu/pool/universe/m/mingw-w64/mingw-w64-tools_8.0.0-1_amd64.deb /tmp/mingw-w64-tools/

RUN cd /tmp/mingw-w64-tools && \
    sha256sum -c mingw-w64-tools.sha256 && \
    dpkg -i mingw-w64-tools_8.0.0-1_amd64.deb && \
    rm -r /tmp/mingw-w64-tools
