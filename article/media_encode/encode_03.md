# FFmpeg 命令

### 要求：环境变量配置过FFmpeg.exe所在目录<br>
### 环境：各平台的控制台

<br>

---
### 1、最简单的一条指令

```shell
命令:
ffmpeg

功能：
可以查看ffmpeg预设的帮助提示,见输出

输出如下,包含版本信息，ffmpeg编译设置的配置参数，以及ffmpeg各个模块的版本号以及ffmpeg的用法.

ffmpeg version N-108089-gc92edd969a-20220910 Copyright (c) 2000-2022 the FFmpeg developers
  built with gcc 12.1.0 (crosstool-NG 1.25.0.55_3defb7b)
  configuration: --prefix=/ffbuild/prefix --pkg-config-flags=--static --pkg-config=pkg-config --cross-prefix=x86_64-w64-mingw32- --arch=x86_64 --target-os=mingw32 --enable-gpl --enable-version3 --disable-debug --enable-shared --disable-static --disable-w32threads --enable-pthreads --enable-iconv --enable-libxml2 --enable-zlib --enable-libfreetype --enable-libfribidi --enable-gmp --enable-lzma --enable-fontconfig --enable-libvorbis --enable-opencl --disable-libpulse --enable-libvmaf --disable-libxcb --disable-xlib --enable-amf --enable-libaom --enable-libaribb24 --enable-avisynth --enable-libdav1d --enable-libdavs2 --disable-libfdk-aac --enable-ffnvcodec --enable-cuda-llvm --enable-frei0r --enable-libgme --enable-libkvazaar --enable-libass --enable-libbluray --enable-libjxl --enable-libmp3lame --enable-libopus --enable-librist --enable-libssh --enable-libtheora --enable-libvpx --enable-libwebp --enable-lv2 --enable-libmfx --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libopenh264 --enable-libopenjpeg --enable-libopenmpt --enable-librav1e --enable-librubberband --enable-schannel --enable-sdl2 --enable-libsoxr --enable-libsrt --enable-libsvtav1 --enable-libtwolame --enable-libuavs3d --disable-libdrm --disable-vaapi --enable-libvidstab --enable-vulkan --enable-libshaderc --enable-libplacebo --enable-libx264 --enable-libx265 --enable-libxavs2 --enable-libxvid --enable-libzimg --enable-libzvbi --extra-cflags=-DLIBTWOLAME_STATIC --extra-cxxflags= --extra-ldflags=-pthread --extra-ldexeflags= --extra-libs=-lgomp --extra-version=20220910
  libavutil      57. 36.101 / 57. 36.101
  libavcodec     59. 42.104 / 59. 42.104
  libavformat    59. 30.101 / 59. 30.101
  libavdevice    59.  8.101 / 59.  8.101
  libavfilter     8. 48.100 /  8. 48.100
  libswscale      6.  8.108 /  6.  8.108
  libswresample   4.  9.100 /  4.  9.100
  libpostproc    56.  7.100 / 56.  7.100
Hyper fast Audio and Video encoder
usage: ffmpeg [options] [[infile options] -i infile]... {[outfile options] outfile}...

用法：ffmpeg [可选参数] [[输入文件1 输入文件可选参数] -i 输入文件] ... {[输出文件 输出文件可选参数] 输出文件...}
```

<br>

---

### 2、查看帮助
```
ffmpeg --help
```

<br>

---

### 3、查看版本号
```
ffmpeg -version
```

<br>

---
### 4、查看文件基础参数
```
ffmpeg -i d:/test.mp3

输出:
[mp3 @ 0x7ff9b2001400] Estimating duration from bitrate, this may be inaccurate
Input #0, mp3, from '/Users/UxinTest/Downloads/test_5_5.mp3':
  Duration: 00:05:55.11, start: 0.000000, bitrate: 98 kb/s
     Stream #0:0: Audio: mp3, 44100 Hz, stereo, fltp, 98 kb/s

说明：
mp3编码，时长数据是根据比特率计算的，可能不是那么的准确，确实不太准确
0号输入，mp3，来自***文件
音频时长：00:05:55.11，起始点0.0,比特率：98kb/s
流数据：0号流：mp3,44100Hz，立体音，编码格式fltp,码率98kb/s
```
<br>

---
### 5、视频转换格式为指定格式
```
ffmpeg -i d:/origin_video.mp4 -g 30 -vcodec h264 -r 30 d:/abc20.mp4

```

### 6、测试



<!-- source: `{{ page.path }}` -->
