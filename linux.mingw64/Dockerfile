FROM lmmsci/linux.mingw:14.04

RUN apt-get update && apt-get install -y    \
    --force-yes --no-install-recommends     \
        mingw64-x-qt5base                   \
        mingw64-x-sdl                       \
        mingw64-x-libvorbis                 \
        mingw64-x-fluidsynth                \
        mingw64-x-stk                       \
        mingw64-x-glib2                     \
        mingw64-x-portaudio                 \
        mingw64-x-libsndfile                \
        mingw64-x-fftw                      \
        mingw64-x-flac                      \
        mingw64-x-fltk                      \
        mingw64-x-libsamplerate             \
        mingw64-x-pkgconfig                 \
        mingw64-x-binutils                  \
        mingw64-x-gcc                       \
        mingw64-x-runtime                   \
        mingw64-x-libgig                    \
        mingw64-x-libsoundio                \
        mingw64-x-lame                      \
&& rm -rf /var/lib/apt/lists/*
