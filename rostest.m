%rostopic echo /turtle1/pose;


cmdpub=rospublisher('/turtle1/cmd_vel',rostype.geometry_msgs_Twist);
pause(3)
cmdmsg = rosmessage(cmdpub);

cmdmsg.Linear.X = 10;
cmdmsg.Angular.Z = 15;

send(cmdpub,cmdmsg)

%%

%在ros中可以使用  rostopic info /turtle1/cmd_vel 来查看数据类型和他的发布者，订阅者

%创建一个发布者，包含发布的节点和发布的数据类型
cmdpub=rospublisher('/turtle1/cmd_vel',rostype.geometry_msgs_Twist);
%创建发布者后，暂停3秒钟
pause(3);
%创建消息（就是后面需要发布的消息）,适应发布者的消息类型
cmdmsg=rosmessage(cmdpub);

% 可以使用 rosmsg show geometry_msgs/Twist 来查看数据类型

%数据类型为Vector向量 Linear.[x y z] Angular.[x y z]

cmdmsg.Linear.X=10;
cmdmsg.Linear.Y=10;

%%
send(cmdpub,cmdmsg);
%%
cmdmsg.Linear.X=-2;
cmdmsg.Linear.Y=-3;
send(cmdpub,cmdmsg);

%%
cmdmsg.Linear.X=15;
cmdmsg.Angular.Z=15;
send(cmdpub,cmdmsg);

