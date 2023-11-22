# MATLAB辅助ROS开发时常用工具

链接：[使用MATALB来辅助ROS开发时常用的simulink模块介绍 - 古月居 (guyuehome.com)](http://www.guyuehome.com/36019)

https://blog.csdn.net/qq_44339029/article/details/131895886?spm=1001.2014.3001.5502

## 1.Subscribe & Bus Selector

Subscribe可以创建一个订阅者，接收ROS网络的消息。它的输出为Msg

Msg需要一个Bus Selector模块选取总线中需要处理的信号

Subscribe中有一个IsNew接口，表示在上一个时间步骤中是否收到了消息



## 2.MATLAB Function

允许在simulink中嵌入自己编写的代码



## 3.Blank Message & Bus Assignment & Publish

Blank Message模块可以用指定的消息或服务类型创建一个空白消息。这里的空白消息是指消息类型，它的输出Msg是一个空白的ROS消息（总线信号）。

一般接到总线分配块Bus Assignment的Bus接口，来使用Bus Assignment模块来修改总线信号的特定字段。Bus Assignment允许总线中的元素被分配新的值。

接下来就要通过Publish模块将消息发送出去

 Publish模块用于向ROS网络发送消息。它的输入需要接一个一个ROS消息（总线信号）。该信号一般由Bus Assignment模块提供。



## 4.Current Time模块

Current Time模块是一个简单，但是非常重要的模块，它可以检索当前的ROS时间或系统时间。可以选择输出格式为一个总线或一个double类型数据。改为Current Time模块作为控制器的时间给定后，两者的时间维度都统一到了ROS的时间维度，控制效果良好





## 5.Get Parameter模块与Set Parameter模块

 Get Parameter模块可以用于从ROS参数服务器获取数值，并通过Value输出，ErrorCode端口输出ROS参数的检索状态，是一个整数值。

Set Parameter模块可以用于在ROS参数服务器上设置数值。Value端口包含ROS参数的值。这个值将被发送到ROS参数服务器上进行更新。



##  6.Read Image模块与Video Viewer模块

 Read Image模块用于从ROS图像信息中提取图像信号。Msg端口接受一个代表图像的ROS消息（总线信号）。一般可由Subscribe模块给定，图像端口image为灰度图像输出一个[MxN]数组，为彩色图像输出一个[MxNx3]数组可以与Video Viewer模块相连显示出订阅的图像信息。ErrorCode端口以整数值输出图像转换状态。



## 7.Read Point Could模块

Read Point Could模块用于从ROS点云信息中提取点云数据。Msg端口接受一个代表点云的ROS消息（总线信号）。如果保留点云结构没有被选中（默认），XYZ端口将点的笛卡尔坐标输出为[Px3]数组，其中P是传入点云中的点的数量。否则，XYZ端口会以[MxNx3]数组的形式输出点的笛卡尔坐标，其中M和N分别是输入的点云的高度和宽度，经过简单的运算后配合scatter3函数即可输出其点云图像，除此之外还可以通过set函数设定3D点云图像的视野。ErrorCode端口将图像转换状态输出为一个整数值。勾选上RGB输出后可输出深度RGB，同样可以连接Video Viewer模块来查看





## 8.常用的一些小模块

Display在simulink的sinks中

keyboard是一个文件安装名

