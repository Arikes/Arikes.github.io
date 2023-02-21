# FFmpeg 专业术语篇

宏观上的媒体处理流如下图：
![media core flow](/resource/encode_core.webp)

## 1、音视频原始数据  
默认视频数据是从摄像头采集出来，输出的原始格式为RGB格式或者YUV格式。  
默认音频数据是从麦克风采集出来，输出的原始格式为PCM格式，或者Float格式。  

### 1.1 视频  

### 1.2 音频  


## 2、未压缩的媒体数据帧  
不论是采集到的RGB或者YUV视频数据，还是采集到的PCM音频数据，在FFmpeg中使用会首先封装到一个结构体类型中，即AVFrame中。  
AVFrame结构体定义：  


## 3、压缩的媒体数据包  
AVPacket  


在FFmpeg中的对照说明：  
![media core flow2](/resource/encode_core2.webp)

## 参考
AvFrame和AvPacket  
[(https://blog.csdn.net/tonychan129/article/details/128731049)](https://blog.csdn.net/tonychan129/article/details/128731049)

