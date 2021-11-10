%%
%����صļ���
x=[1,3,-2,1,2,-1,4,4,2];
y=[2,-1,4,1,-2,3];
rxy=conv(x,y);
figure
subplot(3,1,1)
stem(x)
title(['$$x(n)$$'],'interpreter','latex')
subplot(3,1,2)
stem(y)
title(['$$y(n)$$'],'interpreter','latex')
subplot(3,1,3)
stem(rxy)
title(['$$R_{xy}(l)$$'],'interpreter','latex')
%%
%���������������
n=0:95;
x=cos(0.25*pi*n);
noise=rand(1,96)-0.5;
y=x+noise;
ryy=conv(y,y);
figure
subplot(3,1,1)
stem(x)
title(['$$x(n)$$'],'interpreter','latex')
subplot(3,1,2)
stem(y)
title(['$$y(n)$$'],'interpreter','latex')
subplot(3,1,3)
stem(ryy)
title(['$$R_{yy}(l)$$'],'interpreter','latex')