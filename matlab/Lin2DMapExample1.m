
A = [1 0.5; 0.75 1.25];

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
text(1,-0.06,'1','fontsize',12);
text(-1,-0.06,'-1','fontsize',12);
text(0.03,1-0.02,'1','fontsize',12);
text(0.03,-1,'-1','fontsize',12);

%maxstep = 0.08;
%opts = odeset('MaxStep',maxstep);
%Tf = 20;
%Tb = -20;

N = 6;

markerlw = 1;
marker = 'k*';
marker2 = 'k.';
alen = 9;
ata  = 8;

ic = [1; -0.9];
x1 = ic;
for k = 1:N
    x2 = A*x1;
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker,'linewidth',markerlw);
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker2);
    arrow(x1,x2,'tipangle',ata,'length',alen);
    x1 = x2;
end

ic = [0.9; -1];
x1 = ic;
for k = 1:N
    x2 = A*x1;
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker,'linewidth',markerlw);
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker2);
    arrow(x1,x2,'tipangle',ata,'length',alen);
    x1 = x2;
end

ic = -[1; -0.9];
x1 = ic;
for k = 1:N
    x2 = A*x1;
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker,'linewidth',markerlw);
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker2);
    arrow(x1,x2,'tipangle',ata,'length',alen);
    x1 = x2;
end

ic = -[0.9; -1];
x1 = ic;
for k = 1:N
    x2 = A*x1;
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker,'linewidth',markerlw);
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker2);
    arrow(x1,x2,'tipangle',ata,'length',alen);
    x1 = x2;
end


N = 5;


ic = [1; -1];
x1 = ic;
for k = 1:N
    x2 = A*x1;
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker,'linewidth',markerlw);
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker2);
    arrow(x1,x2,'tipangle',ata,'length',alen);
    x1 = x2;
end

ic = -[1; -1];
x1 = ic;
for k = 1:N
    x2 = A*x1;
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker,'linewidth',markerlw);
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker2);
    arrow(x1,x2,'tipangle',ata,'length',alen);
    x1 = x2;
end

ic = 0.08*[0.5; 1];
x1 = ic;
for k = 1:N
    x2 = A*x1;
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker,'linewidth',markerlw);
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker2);
    arrow(x1,x2,'tipangle',ata,'length',alen);
    x1 = x2;
end

ic = -0.08*[0.5; 1];
x1 = ic;
for k = 1:N
    x2 = A*x1;
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker,'linewidth',markerlw);
    plot([x1(1) x2(1)],[x1(2) x2(2)],marker2);
    arrow(x1,x2,'tipangle',ata,'length',alen);
    x1 = x2;
end

set(gcf,'PaperPosition',[.25 .25 3 2.25])
print('-depsc','Lin2DMapExample1.eps')
