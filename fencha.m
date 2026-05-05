%% fencha
clc
clear 
global r
C=0:0.001:1.5;
L=length(C);
for i=1:L
r=C(i);
[T,Y]=ode45('Duffing',0:0.01:500,[0 0]);
data=Y(10000:end,1);
  for j=2:(length(data)-1)
    if data(j)>data(j-1)&&data(j)>data(j+1)
     plot(r,data(j),'.','markersize',3); 
     hold on;
     if j==20
        break;
     end
    end
  end
end

xlabel('r','FontSize',13,'FontName','Times New Roman');
ylabel('x','FontSize',13,'FontName','Times New Roman');
