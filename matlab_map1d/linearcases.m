function linearcases(w)
    flw = 1.5;
    cwlw = 1.5;
    figure(1)
    if (w == 1)
        % positive values
        avals = [1.15 1.0 0.75 0];
        xmin = -2;
        xmax = 30;
    elseif (w == 2)
        % negative values
        avals = [-0.75 -1.0 -1.15];
        xmin = -30;
        xmax = 30;
    else
        % zero
        avals = [0];
        xmin = -2;
        xmax = 20;
    end
    clf
    m = size(avals,2);
    for j = 1:m
        a = avals(j);
        astr = sprintf('a = %5.2f',a)
        x0 = 10;
        N = 10;
        x = zeros(N,1);
        x(1) = x0;
        for k = 1:N-1
            x(k+1) = a*x(k);
        end

        subplot(m,2,2*j)
        xs = linspace(xmin,xmax,15);
        ys = a*xs;
        plot(xs,ys,'k','linewidth',flw)
        hold on
        plot(xs,xs,'k--')
        axis([xmin xmax xmin xmax])
        plot([x(1) x(1)],[x(1) x(2)],'k-','linewidth',cwlw)
        for k = 2:N-1
            plot([x(k-1) x(k)],[x(k) x(k)],'k-','linewidth',cwlw)
            plot([x(k) x(k)],[x(k) x(k+1)],'k-','linewidth',cwlw)
        end
        grid on
        xlabel('x_n','fontsize',12,'fontweight','bold')
        ylabel('x_{n+1}','fontsize',12,'fontweight','bold')
        text(xmin+.2*(xmax-xmin),0.9*xmax,astr,'fontsize',12,'fontweight','bold')
        set(gca,'fontsize',12,'fontweight','bold')
        
        subplot(m,2,2*j-1)
        plot(0:N-1,x,'k.','linewidth',2)
        hold on
        plot(0:N-1,x,'ko','linewidth',2)
        plot(0:N-1,x,'k*','linewidth',2)
        plot(0:N-1,x,'k','linewidth',1.5)

        axis([0 N-1 xmin xmax])
        xlabel('n','fontsize',12,'fontweight','bold')
        ylabel('x_n','fontsize',12,'fontweight','bold')
        grid on
        set(gca,'fontsize',12,'fontweight','bold')
        text(1,0.9*xmax,astr,'fontsize',12,'fontweight','bold')
        
    end
    if (w == 1)
        print('-deps','linearcases_pos.eps');
    elseif (w == 2)
        print('-deps','linearcases_neg.eps');
    end

end