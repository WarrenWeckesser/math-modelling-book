dofig = 4;

if dofig == 1
    clf
    b = 0.25;
    y0 = .20;
    ics = [-.12 y0 4; -0.09 y0 5; -0.06 y0 3; -.03 y0 5; 0.0 y0 5 ]';
    LinearizationFPExample(b,ics)
    hold on
    ics = [.12 -y0 4;  0.09 -y0 4; 0.067 -y0 3; .04 -y0 4; 0.01 -y0 4]';
    LinearizationFPExample(b,ics)
    text(-.2,.1,'\beta=0.25','fontsize',12,'fontweight','bold')
    set(gca,'fontsize',12,'fontweight','bold')
end

if dofig == 2
    clf
    b = -1.25;
    y0 = .02;
    ics = [0.007 0.005 11; 0.0 -0.012 10]';
    LinearizationFPExample(b,ics)
%    hold on
%    ics = -ics;
%    LinearizationFPExample(b,ics)
    text(-.2,.1,'\beta=-1.25','fontsize',12,'fontweight','bold')
    set(gca,'fontsize',12,'fontweight','bold')
end

if dofig == 3
    clf
    b = -0.25;
    y0 = .02;
    ics = [0.1 -0.2 16; -0.05 0.2 16]';
    LinearizationFPExample(b,ics)
%    hold on
%    ics = -ics;
%    LinearizationFPExample(b,ics)
    text(-.2,.1,'\beta=-0.25','fontsize',12,'fontweight','bold')
    set(gca,'fontsize',12,'fontweight','bold')
end

if dofig == 4
    clf
    b = 3.5;
    y0 = .02;
    ics = [0.031 -0.02 5; 0.041 -0.02 4]';
    LinearizationFPExample(b,ics)
%    hold on
%    ics = -ics;
%    LinearizationFPExample(b,ics)
    text(-.2,.1,'\beta=3.5','fontsize',12,'fontweight','bold')
    set(gca,'fontsize',12,'fontweight','bold')
end