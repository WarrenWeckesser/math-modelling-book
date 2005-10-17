function CompSpec

A = [1 0; 0 3/4];

xmin = 0;
xmax = 1.6;
nx = 21;
ymin = 0;
ymax = 1.1;
ny = 21;

lw = 1;

clf;
%vfplanar(@CompSpecVF,A,[xmin xmax],nx,[ymin ymax],ny);

axis equal
axis([xmin xmax ymin ymax])
set(gca,'YTick',[-1 -0.5 0 0.5 1])
set(gca,'fontsize',12)

hold on

plot([0 1],[1 0],'b--')
plot([0 3/2],[3/4 0],'b--')

plot(0,0,'ko','linewidth',2)
plot(1,0,'ko','linewidth',2)
plot(0,3/4,'ko','linewidth',2)
plot(1/2,1/2,'ko','linewidth',2)

plot(0,0,'k.','linewidth',2)
plot(1,0,'k.','linewidth',2)
plot(0,3/4,'k.','linewidth',2)
plot(1/2,1/2,'k.','linewidth',2)
%axis off
%text(1,-0.06,'1','fontsize',12);
%text(-1,-0.06,'-1','fontsize',12);
%text(0.03,1-0.02,'1','fontsize',12);
%text(0.03,-1,'-1','fontsize',12);

maxstep = 0.08;
opts = odeset('MaxStep',maxstep);
Tf = 20;
Tb = -20;


ic = [0.19; 0.25];
[t,v] = ode45(@CompSpecVF,[0 Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@CompSpecVF,[0 Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
 
ic = [0.57; 0.55];
[t,v] = ode45(@CompSpecVF,[0 Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@CompSpecVF,[0 Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)

ic = [0.45; 0.25];
[t,v] = ode45(@CompSpecVF,[0 Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@CompSpecVF,[0 Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)

ic = [1; 1];
[t,v] = ode45(@CompSpecVF,[0 Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@CompSpecVF,[0 0.015*Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)

ic = [1; 0.5];
[t,v] = ode45(@CompSpecVF,[0 Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@CompSpecVF,[0 0.05*Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)

ic = [0.8; 0.25];
[t,v] = ode45(@CompSpecVF,[0 Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@CompSpecVF,[0 0.2*Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)


ic = [1; 0.05];
[t,v] = ode45(@CompSpecVF,[0 Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@CompSpecVF,[0 0.2*Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)


ic = [1; 0.001];
[t,v] = ode45(@CompSpecVF,[0 Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@CompSpecVF,[0 0.2*Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)


ic = [0.8; 0.05];
[t,v] = ode45(@CompSpecVF,[0 Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@CompSpecVF,[0 0.5*Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)

ic = [0.001; 0.75];
[t,v] = ode45(@CompSpecVF,[0 2*Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@CompSpecVF,[0 0.5*Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)

ic = [0.05; 0.75];
[t,v] = ode45(@CompSpecVF,[0 2*Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@CompSpecVF,[0 0.5*Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)


ic = [0.02; 0.6];
[t,v] = ode45(@CompSpecVF,[0 2*Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@CompSpecVF,[0 0.2*Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)


ic = [0.2; 0.5];
[t,v] = ode45(@CompSpecVF,[0 2*Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@CompSpecVF,[0 0.5*Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)


ic = [0.4; 0.7];
[t,v] = ode45(@CompSpecVF,[0 2*Tf],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)
[t,v] = ode45(@CompSpecVF,[0 0.2*Tb],ic,opts,A);
plot(v(:,1),v(:,2),'k-','linewidth',lw)

text(0.8,0.6, 'A','fontsize',14,'fontweight','bold');
text(0.13,0.75,'B','fontsize',14,'fontweight','bold');
text(0.4,0.3,'C','fontsize',14,'fontweight','bold');
text(1,0.1,'D','fontsize',14,'fontweight','bold');

print('-depsc','CompSpec.eps')

end

function z = vfplanar(vf,p,xrange,nx,yrange,ny)
    x = linspace(xrange(1),xrange(2),nx);
    y = linspace(yrange(1),yrange(2),ny);
    [X,Y] = meshgrid(x,y);
    z = [X,Y];
    U = zeros(size(X));
    V = zeros(size(U));
    for j = 1:nx,
        for k = 1:ny
            dx = vf(0,[x(j); y(k)],p);
            U(k,j) = dx(1);
            V(k,j) = dx(2);
        end
    end
    quiver(X,Y,U,V);
end

function dz = CompSpecVF(t,z,p)
    x = z(1);
    y = z(2);
    dz = [ (1-x-y)*x; (3/4)*(1-(4/3)*y-(2/3)*x)*y];
end