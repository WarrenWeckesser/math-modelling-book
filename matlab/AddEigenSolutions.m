function AddEigenSolutions(A)
    ax = axis;
    a = A(1,1);
    b = A(1,2);
    c = A(2,1);
    d = A(2,2);
    [V,D] = eig(A);
    if (~isreal(D))
        return;
    end
    v1 = V(:,1);
    v2 = V(:,2);
    
    xmin = ax(1);
    xmax = ax(2);
    ymin = ax(3);
    ymax = ax(4);
    
    nv = 6;
    x = linspace(xmin,xmax,nv);
    y = linspace(ymin,ymax,nv);
    
    lw = 2;
    if (abs(v1(1)) > abs(v1(2)))
        plot(x,v1(2)*x/v1(1),'k-','linewidth',lw)
        s1_xvecs = x;
        s1_yvecs = v1(2)*x/v1(1);
    else
        plot(v1(1)*y/v1(2),y,'k-','linewidth',lw)
        s1_xvecs = v1(1)*y/v1(2);
        s1_yvecs = y;
    end
    hold on
    
    if (abs(v2(1)) > abs(v2(2)))
        plot(x,v2(2)*x/v2(1),'k-','linewidth',lw)
        s2_xvecs = x;
        s2_yvecs = v2(2)*x/v2(1);
    else
        plot(v2(1)*y/v2(2),y,'k-','linewidth',lw)
        s2_xvecs = v2(1)*y/v2(2);
        s2_yvecs = y;
    end

    alen = 12;
    for k = 2:nv-1,
        p = [s1_xvecs(k); s1_yvecs(k)];
        v = A*p;
        v = .1*v/norm(v);
        p2 = p+v;
        arrow(p,p2,'tipangle',12,'length',alen);
    end
    
    for k = 2:nv-1,
        p = [s2_xvecs(k); s2_yvecs(k)];
        v = A*p;
        v = .1*v/norm(v);
        p2 = p+v;
        arrow(p,p2,'tipangle',12,'length',alen);
    end
