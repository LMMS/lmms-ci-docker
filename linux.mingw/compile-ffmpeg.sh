#!/usr/bin/env sh

configure_install_ffmpeg() 
{
  CROSS_PREFIX=$1
  ./configure \
    --arch=x86 \
    --target-os=mingw32 \
    --enable-cross-compile \
    --prefix=/usr/$CROSS_PREFIX \
    --cross-prefix=$CROSS_PREFIX- \
    --host-cc=$CROSS_PREFIX-gcc \
    --x86asmexe=yasm \
    --enable-shared \
    --disable-static \
    --disable-debug \
    --disable-programs \
    --disable-doc
  make && make install
}

# YASM is recommended when compiling FFmpeg 
apt-get install yasm -y

git clone -c http.sslVerify=false https://git.ffmpeg.org/ffmpeg.git /tmp/ffmpeg
cd /tmp/ffmpeg

configure_install_ffmpeg i686-w64-mingw32
configure_install_ffmpeg x86_64-w64-mingw32