clc
clear
close all
global r

rc = 1.0890;
R = [1.0885 1.0890 1.0895];

tspan = [0 400];
x0 = [0 0];

figure('Color','w','Position',[100 50 1200 800])

for i = 1:3

    r = R(i);

    [t,x] = ode45(@Duffing,tspan,x0);

    n = floor(length(t)*0.7);

    tt = t(n:end);
    xx = x(n:end,1);
    vv = x(n:end,2);

    subplot(3,2,2*i-1)
    plot(tt,xx,'b','LineWidth',1)
    xlabel('t')
    ylabel('x')
    title(['时域图 r = ',num2str(r)])
    grid on

    subplot(3,2,2*i)
    plot(xx,vv,'r','LineWidth',1)
    xlabel('x')
    ylabel('dx/dt')
    title(['相轨迹图 r = ',num2str(r)])
    grid on
    axis tight

end

sgtitle('精确阈值验证（rc = 1.0890）','FontSize',14)