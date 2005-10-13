function AddAxes0(A)
    ax = axis;
    xmin = ax(1);
    xmax = ax(2);
    ymin = ax(3);
    ymax = ax(4);
    
    ff = 0.03;
    plot([xmin xmax],[0 0],'k+-')
    plot([0 0],[ymin ymax],'k+-')
    text(xmin-ff*(xmax-xmin),-ff*(ymax-ymin),sprintf('%5.2f',xmin),'fontsize',12,'fontweight','bold')
    text(xmax-ff*(xmax-xmin),-ff*(ymax-ymin),sprintf('%5.2f',xmax),'fontsize',12,'fontweight','bold')
    text(0+ff*(xmax-xmin),ymin,sprintf('%5.2f',ymin),'fontsize',12,'fontweight','bold')
    text(0+ff*(xmax-xmin),ymax,sprintf('%5.2f',ymax),'fontsize',12,'fontweight','bold')    
end
