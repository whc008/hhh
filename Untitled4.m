clear 

Tb=1;A=1;fc=4;%输入信号参数:码元长度Tb;正弦信号幅度A;频率fc;

dt=0.001;t=0:dt:Tb;

s=A*sin(2*pi*fc*t);%匹配滤波器输入正弦信号;

h=sin(2*pi*fc*(Tb-t));% 匹配滤波器冲激响应h（t）=s(Tb-t);

y=conv(s,h)*dt; %计算卷积积分，匹配滤波器输出

ty=[1:1:length(y)]*dt;

subplot(3,1,1);

plot(t,s,'g');

subplot(3,1,2);

plot(t,h,'g');

subplot(3,1,3);

plot(ty,0*ty,'g',ty,y,'g');hold on

axis([0,2,-0.5,0.5]);

xlabel('正弦信号的匹配虑波器输出') 
