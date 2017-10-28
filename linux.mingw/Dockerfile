FROM lmmsci/base:14.04

RUN apt-get update && apt-get install -y    \
    --no-install-recommends                 \
        software-properties-common          \
&& rm -rf /var/lib/apt/lists/*

RUN apt-add-repository -y "ppa:tobydox/mingw-x-trusty"

RUN apt-get update && apt-get install -y    \
    --force-yes --no-install-recommends     \
        mingw32                             \
        nsis                                \
        cloog-isl                           \
        libmpc3                             \
        pkg-config                          \
        mingw32-x-gcc                       \
        mingw32-x-qt5base                   \
&& rm -rf /var/lib/apt/lists/*
