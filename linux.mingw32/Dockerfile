FROM lukaswhl/lmms-ci-base:14.04

RUN apt-get update && apt-get install -y    \
    --no-install-recommends                 \
        software-properties-common          \
&& rm -rf /var/lib/apt/lists/*

RUN apt-add-repository -y "ppa:tobydox/mingw-x-trusty"

RUN apt-get update && apt-get install -y    \
    --force-yes --no-install-recommends     \
        mingw32 nsis cloog-isl libmpc3      \
        pkg-config                          \
&& rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y    \
    --force-yes --no-install-recommends     \
        mingw32-x-qt5base                   \
        mingw32-x-sdl                       \
        mingw32-x-libvorbis                 \
        mingw32-x-fluidsynth                \
        mingw32-x-stk                       \
        mingw32-x-glib2                     \
        mingw32-x-portaudio                 \
        mingw32-x-libsndfile                \
        mingw32-x-fftw                      \
        mingw32-x-flac                      \
        mingw32-x-fltk                      \
        mingw32-x-libsamplerate             \
        mingw32-x-pkgconfig                 \
        mingw32-x-binutils                  \
        mingw32-x-gcc                       \
        mingw32-x-runtime                   \
        mingw32-x-libgig                    \
        mingw32-x-libsoundio                \
        mingw32-x-lame                      \
&& rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y    \
    --force-yes --no-install-recommends     \
        wget                                \
&& rm -rf /var/lib/apt/lists/*

ADD ccache.sha256 /tmp/ccache/ccache.sha256

RUN cd /tmp/ccache && \
	wget http://archive.ubuntu.com/ubuntu/pool/main/c/ccache/ccache_3.2.4-1_amd64.deb && \
	sha256sum -c ccache.sha256 && \
	sudo dpkg -i ccache_3.2.4-1_amd64.deb && \
	rm -r /tmp/ccache
