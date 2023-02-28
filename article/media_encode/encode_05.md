# FFplay

## 1. 涉及函数

## 1.1 av_read_frame
```
av_read_frame的返回值都有哪些，都标识什么意思

av_read_frame的返回值可以是以下几种：
AVERROR_EOF：表示文件结束或者输入流结束
AVERROR(EAGAIN)：表示需要重新尝试读取
AVERROR(EINVAL)：表示参数无效
AVERROR(ENOMEM)：表示没有足够的内存
AVERROR_EXIT：表示读取过程中发生了错误，需要退出
```


## 1.2 av_read_pause
```
av_read_pause函数用于暂停读取输入流，可以用于暂停视频播放或者暂停音频播放。它会暂停读取输入流，但不会改变输入流的状态，因此可以在暂停后继续读取输入流
```

## 1.3 av_read_play
```
av_read_play函数用于恢复读取输入流，可以用于恢复视频播放或者恢复音频播放。它会恢复读取输入流，但不会改变输入流的状态，因此可以在恢复后继续读取输入流。
```

## 1.4 av_dump_format
```
av_dump_format函数用于将输入流的格式信息打印到指定的文件中，可以用于调试和分析输入流的格式信息。它会打印出输入流的格式信息，包括文件名、流ID、流类型、时长、帧率等。
```

## 1.5 avformat_seek_file
```
avformat_seek_file函数用于设置输入流的读取位置，可以用于实现快进、快退、定位等功能。它会将输入流的读取位置设置到指定的时间或者字节位置，从而实现快进、快退、定位等功能。

函数的参数包括：
s：输入流的上下文
stream_index：流的索引
min_ts：最小的时间戳
ts：要定位到的时间戳
max_ts：最大的时间戳
flags：定位标志，可以是AVSEEK_FLAG_BACKWARD或AVSEEK_FLAG_BYTE
```

## 1.6 avformat_find_stream_info
```
avformat_find_stream_info函数用于查找输入流的流信息，可以用于获取输入流的流信息，包括流ID、流类型、时长、帧率等。它会查找输入流的流信息，并将查找到的流信息存储到输入流的上下文中。

函数的参数包括：
s：输入流的上下文
options：可选参数，用于指定查找流信息的方式
```

## 1.7 avformat_open_input
```
avformat_open_input函数用于打开输入流，可以用于打开文件、网络流等输入流。它会打开输入流，并将输入流的上下文存储到指定的变量中，从而可以获取输入流的信息。

函数的参数包括：
ps：输入流的上下文
filename：输入流的文件名
fmt：输入流的格式
options：可选参数，用于指定打开输入流的方式
```

## 1.8 av_format_inject_global_side_data 
```
av_format_inject_global_side_data函数用于向输入流注入全局的边缘数据，可以用于添加输入流的元数据，如视频的宽度、高度、帧率等。它会向输入流注入全局的边缘数据，从而可以添加输入流的元数据。

函数的参数包括：
s：输入流的上下文
type：边缘数据的类型
data：边缘数据的指针
size：边缘数据的大小
flags：注入标志，可以是AV_SIDE_DATA_PARAM_CHANGE_FLAG_SKIP_REORDERING或AV_SIDE_DATA_PARAM_CHANGE_FLAG_IGNORE_CHROMA_POSITION
```

## 1.9 avformat_alloc_context

```
avformat_alloc_context 这个函数可以被用来申请并且初始化一个AVFormatContext类型数据;
申请一个AVFormatContext类型数据空间。这个函数会同时赋值一些基本的信息[用户一般后面也不会改变的字段]到AVFormatContext结构体中。
成功的话返回一个新建的指针；失败则返回NULL.
```

## 1.10 PMTS
```
PMTS全称Program Map Tables,是一种特别的数据表，表明一个数字媒体文件中的用到了哪些格式的音频流，视频流以及其他类型的数据。PMTS在很多多媒体应用中是非常重要的，比如基于IP网络的视频流。他们会提供关于流类型、传输协议、视频编码格式，数据率等信息给应用程序使用。
```

## 1.11 av_find_input_format
```
av_find_input_format 函数.根据参数指定的名字在已注册的支持的输入格式列表中查找格式。
```

## 1.12 av_gettime_relative
```
av_gettime_relative()函数，用于以一种相对格式返回自
指定的起始点以来的当前时间。换句话说，它返回过去某个特定点以来的微秒数，而不涉及实际的日历日期和时间。该API用于很方便的实现相对计时器或测量时间差方便。
此API 是线程安全的。 返回值是单调递增的，在系统时间连续时，以恒定的速率增加。
```

## 1.12 avformat_free_context


## 1.13 AVFMT_FLAG_GENPTS


# 参考
[FFmpeg之ffplay源码各个结构体中的serial字段分析](https://www.jianshu.com/p/8312e0e462ac)


