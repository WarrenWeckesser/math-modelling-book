function AddAxes(A)
    ax = axis;
    xmin = ax(1);
    xmax = ax(2);
    ymin = ax(3);
    ymax = ax(4);
    
    plot([xmin xmax],[0 0],'k+-')
    plot([0 0],[ymin ymax],'k+-')
    
    alen = 10;
    nv = 7;
    x = linspace(xmin,xmax,nv);
    for k = 2:nv-1
        if mod(nv,2)==0 | ((nv+1)/2) ~= k
            p = [x(k); 0];
            v = A*p;
            v = .1*v/norm(v);
            p2 = p+v;
            arrow(p,p2,'tipangle',12,'length',alen);
        end
    end
    y = linspace(ymin,ymax,nv);
    for k = 2:nv-1
        if mod(nv,2)==0 | ((nv+1)/2) ~= k
            p = [0; y(k)];
            v = A*p;
            v = .1*v/norm(v);
            p2 = p+v;
            arrow(p,p2,'tipangle',12,'length',alen);
        end
    end
