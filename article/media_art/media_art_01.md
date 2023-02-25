# 人声与背景音乐自动分离

## 依赖
1. python
2. ffmpeg
3. tensorflow
4. spleeter

## 搭建环境
1. Python安装
2. FFmpeg环境
   + 官网下载ffmpeg运行包  
   + 放置路径设置到环境变量中
   + python配置安装ffmepg
   ```
   pip install FFmpeg
   控制台执行ffmpeg 查看是否可以找到ffmpeg，如果有输出用法说明安装成功;
   ```
3. tensorflow安装
4. spleeter安装
   + `pip install spleeter`
   + [下载模型文件2stems.tar.gz ](https://github.com/deezer/spleeter/releases/tag/v1.4.0)   
5. 测试工程配置
   ```
   + 创建一个spleeter的文件夹
   + 在spleeter文件夹中再创建一个pretrained_models文件夹
   + 把你下载好的预测模型解压到这个pretrained_models文件夹中
   ```
6. 执行指令
   ```
   Python -m spleeter separate D:\spleeter\gimmemore.mp4 -p spleeter:2stems -o D:\aa 
   ```
   说明：  
    ```
    D:\spleeter\gimmemore.mp4为原始文件  
    2stems为模型文件名  
    D:\aa 为分离出的两个音频文件存放目录  
    ```
7. 原文路径  
   <br>
   见 [参考4](https://blog.csdn.net/weixin_45079473/article/details/128050188)



## 参考

[1. 国外付费工具体验](https://www.lalal.ai/)

[2. git spleeter项目](https://github.com/deezer/spleeter)

[3. spleeter 模型文件 2stems.tar.gz
](https://github.com/deezer/spleeter/releases/tag/v1.4.0)

[4. 基于python，利用Spleeter实现人声音频分离（详细教程）](https://blog.csdn.net/weixin_45079473/article/details/128050188)

[5. 业界比较流行的人声分离算法模型](https://zhuanlan.zhihu.com/p/596605101)
