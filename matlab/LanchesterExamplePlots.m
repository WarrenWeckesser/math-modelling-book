
lw = 2;

clf
hold on
axis equal
%
% y0 = 10000
%
y = linspace(0,10000,125);
x = sqrt((y.^2+5e7)/1.5);
plot(x,y,'k','linewidth',lw);

%
% y0 = 14000
%
x = linspace(0,10000,125);
y = sqrt(1.5*x.^2+4.6e7);
plot(x,y,'k','linewidth',lw);

%
% Asymptote
%
y = sqrt(1.5)*x;
plot(x,y,'k','linewidth',lw);

grid on
set(gca,'fontsize',12,'fontweight','bold')
xlabel('x')
ylabel('y')

axis([0 10000 0 14000])

plot(10000,10000,'ko','linewidth',lw)
plot(10000,12247,'ko','linewidth',lw)
plot(10000,13990,'ko','linewidth',lw)
% text(10500,10000,'y_0 = 10000')
% text(10500,12247,'y_0 = 12247')
% text(10500,14000,'y_0 = 14000')

set(gcf,'PaperPosition',[0 0 3.5 4])
print('-deps','LanchesterExamplePlots.eps')
