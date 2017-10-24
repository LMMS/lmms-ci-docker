FROM lukaswhl/lmms-ci-linux.mingw:14.04

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
