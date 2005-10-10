function LinearizationFPExample(b,ics)

    D = 0.2;
    xmin = -D;
    xmax = D;
    nx = 21;
    ymin = -D;
    ymax = D;
    ny = 21;

    lw = 2;

%    clf;

    axis equal
    axis([xmin xmax ymin ymax])
    set(gca,'YTick',[-1 -0.5 0 0.5 1])
    set(gca,'fontsize',12)

    hold on
    AddAxes0([])

    axis off
    text(1,-0.06,'1','fontsize',12);
    text(-1,-0.06,'-1','fontsize',12);
    text(0.03,1-0.02,'1','fontsize',12);
    text(0.03,-1,'-1','fontsize',12);

    markerlw = 1;
    marker = 'k*';
    marker2 = 'k.';
    alen = 9;
    ata  = 8;

    tdx = 0.08;
    tdy = -0.04;

    for ic = ics
        x1 = ic(1:2);
%        text(x1(1)+tdx,x1(2)+tdy,'x_0','fontsize',12,'fontweight','bold')
        for k = 1:ic(3)
            x2 = func(x1,b);
            if (abs(x2(1)) > 1 | abs(x2(2)) > 1)
                break;
            end
            plot([x1(1) x2(1)],[x1(2) x2(2)],marker,'linewidth',markerlw);
            plot([x1(1) x2(1)],[x1(2) x2(2)],marker2);
            arrow(x1,x2,'tipangle',ata,'length',alen);
            x1 = x2;
            xstr = sprintf('x_%d',k);
%            text(x1(1)+tdx,x1(2)+tdy,xstr,'fontsize',12,'fontweight','bold')
        end
    end
end

function x1 = func(x0,b)
    x = x0(1);
    y = x0(2);
    x1 = [ (1-x)*x + b*y; y/2 + x];
end
