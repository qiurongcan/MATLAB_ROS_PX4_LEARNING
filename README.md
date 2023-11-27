# MATLAB_ROS_PX4_LEARNING,用来记录一下自己学习matlab联合ros和px4进行仿真的一些学习过程

## 文件说明

md文件是一些网上参考资料的记录
rostest.m和rostest.slx是matlab向ros发布消息的一个建模和代码
（后续会出一些教程）

## 在上层控制px4是通过mavros进行的
因此，需要控制px4中的无人机运动，首先需要对mavros的消息熟悉

## 通过ros控制px4在gazebo中运动
mavros中需要用的到请求和服务
第一个请求和服务：无人机切换模式
第二个服务和请求：无人机解锁

然后进行发布位置和消息的订阅
发布无人机的位置消息
订阅无人机的状态

## 功能包编写
使用python进行功能包的编写

##运行各个节点

