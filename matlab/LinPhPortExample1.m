
A = [0.5 -1; 1 -1];

xmin = -1;
xmax = 1;
nx = 21;
ymin = -1;
ymax = 1;
ny = 21;

lw = 2;

clf;
%vfplanar(@linearsys,A,[-1 1],nx,[-1 1],ny);

axis equal
axis([xmin xmax ymin ymax])
set(gca,'YTick',[-1 -0.5 0 0.5 1])
set(gca,'fontsize',12)

hold on
AddNullclines(A)
AddEigenSolutions(A)
AddAxes(A)

axis off
text(1,-0.06,'1','fontsize',12);
text(-1,-0.06,'-1','fontsize',12);
text(0.03,1-0.02,'1','fontsize',12);
text(0.03,-1,'-1','fontsize',12);

maxstep = 0.08;
opts = odeset('MaxStep',maxstep);
Tf = 20;
Tb = -20;

ic = [0.5; 0];
[t,v] = ode45(@linearsys,[0 Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@linearsys,[0 Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)

ic = [-0.5; 0];
[t,v] = ode45(@linearsys,[0 Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@linearsys,[0 Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)

% ic = [0;1];
% [t,v] = ode45(@linearsys,[0 Tf],ic,opts,A);
% plot(v(:,1),v(:,2),'k-','linewidth',lw)
% [t,v] = ode45(@linearsys,[0 Tb],ic,opts,A);
% plot(v(:,1),v(:,2),'k-','linewidth',lw)
% 
% ic = [0;-1];
% [t,v] = ode45(@linearsys,[0 Tf],ic,opts,A);
% plot(v(:,1),v(:,2),'k-','linewidth',lw)
% [t,v] = ode45(@linearsys,[0 Tb],ic,opts,A);
% plot(v(:,1),v(:,2),'k-','linewidth',lw)

print('-depsc','LinPhPortExample1.eps')
