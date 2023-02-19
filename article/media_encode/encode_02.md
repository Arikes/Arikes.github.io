# 认识FFmpeg

<!-- source: `{{ page.path }}` -->

[FFmpeg官网](https://ffmpeg.org/) (https://ffmpeg.org/)

---
## 官网介绍
>A complete, cross-platform solution to record, convert and stream audio and video.<br>

FFmpeg是一套完整的跨平台音视频编解码解决方案，支持录制，格式转换，以及流式传输音频和视频。

<br>
<br>

---
## 业界角色
>FFmpeg is the leading multimedia framework, able to decode, encode, transcode, mux, demux, stream, filter and play pretty much anything that humans and machines have created. It supports the most obscure ancient formats up to the cutting edge. No matter if they were designed by some standards committee, the community or a corporation. It is also highly portable: FFmpeg compiles, runs, and passes our testing infrastructure FATE across Linux, Mac OS X, Microsoft Windows, the BSDs, Solaris, etc. under a wide variety of build environments, machine architectures, and configurations.<br>

FFmpeg是业界很领先的媒体处理框架，可以用来解码，编码，转码，封装，解封装，流处理，滤镜处理，以及播放大部分人类或者机器创造的媒体。它支持的格式包括最晦涩的古老媒体格式，日常格式，以及当前最先进的媒体格式。无论它们是由标准委员会、社区还是公司设计的，它都可以支持。它也是非常便携可移植的，ffmpeg在多种平台[包括但不限于Linux, Mac OS X, Microsoft Windows, the BSDs, Solaris]通过了编译、运行及测试验证。在多种环境下都可以配置构建。

<br>
<br>

---
## 组成说明
>It contains libavcodec, libavutil, libavformat, libavfilter, libavdevice, libswscale and libswresample which can be used by applications. As well as ffmpeg, ffplay and ffprobe which can be used by end users for transcoding and playing.


它包含libavcodec,libavutil,libavformat,libavfilter,libavdevice,libswscale以及libswresample这几个模块，可以在应用程序中直接作为库调用。<br>

| 模块           | 功能 |
| -----------   | ----------- |
| libavcodec    | 音视频编码库，包含h264,h265,aac,opus等，是最晦涩的模块了 |
| libavutil     | 如名，是个工具模块    |
| libavformat   | 文件格式解析[rmvb,avi,mp3,mp4]，以及协议库[http,file]  |
| libavfilter   | 音视频滤镜库,支持视频反转，旋转，裁剪等  |
| libavdevice   | 输入输出设备库，支持音视频设备采集，播放|
| libswscale    | 用于图像格式转换，支持类似yuv转rgb        |
| libswresample | 音频重采样库,支持音频的原始格式间转换        |

<br>

同时也提供了三个工具，ffmpeg，ffplay，ffprobe,可以被用户直接用来转换媒体格式，推流，分析媒体文件，播放媒体文件.<br>

| 模块     | 功能 |
| -------- | ----------- |
| ffmpeg   | 格式转换，推流，转码       |
| ffplay   | 媒体播放        |
| ffprobe  | 媒体格式探测、分析        |

<br>
总之，就是非常强大的框架。

<br>
<br>

---
## 其他
ffmpeg应为是个框架，所以对于不支持的新格式，是支持拓展开发的。具体可以参见后面文章。

<br>

---
## 参考
[FFmpeg常用模块](https://www.jianshu.com/p/02dc77308772)