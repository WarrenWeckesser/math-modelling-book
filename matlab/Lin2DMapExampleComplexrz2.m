
P = [1 1; 1 -2];
a = 1/2;
b = sqrt(3)/2;
R = [a -b; b a];
A = P*R*inv(P);

xmin = -1;
xmax = 1;
nx = 21;
ymin = -1;
ymax = 1;
ny = 21;

lw = 2;

clf;

axis equal
axis([xmin xmax ymin ymax])
set(gca,'YTick',[-1 -0.5 0 0.5 1])
set(gca,'fontsize',12)

hold on
%AddNullclines(A)
%AddEigenSolutions0(A)
AddAxes0(A)

axis off
% text(1,-0.06,'1','fontsize',12);
% text(-1,-0.06,'-1','fontsize',12);
% text(0.03,1-0.02,'1','fontsize',12);
% text(0.03,-1,'-1','fontsize',12);

N = 13;

markerlw = 1;
marker = 'k*';
marker2 = 'k.';
alen = 9;
ata  = 8;

ic = [0.5; 0.25];
x1 = ic;
for k = 1:N
    x2 = A*x1;
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker,'linewidth',markerlw);
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker2);
    arrow(x1,x2,'tipangle',ata,'length',alen);
    x1 = x2;
end

text(0.55,0.3,'x_0=x_6','fontsize',12,'fontweight','bold')

set(gcf,'PaperPosition',[.25 .25 3 2.25])
print('-depsc','Lin2DMapExampleComplexrz2.eps')
