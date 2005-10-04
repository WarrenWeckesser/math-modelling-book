function AddNullclines(A)
    ax = axis;
    a = A(1,1);
    b = A(1,2);
    c = A(2,1);
    d = A(2,2);
    xmin = ax(1);
    xmax = ax(2);
    ymin = ax(3);
    ymax = ax(4);
    nv = 7;
    x = linspace(xmin,xmax,nv);
    y = linspace(ymin,ymax,nv);
    if (abs(b) > abs(a))
        plot(x,-a*x/b,'--')
        xn_xvecs = x;
        xn_yvecs = -a*x/b;
    else
        plot(-b*y/a,y,'--')
        xn_xvecs = -b*y/a;
        xn_yvecs = y;
    end
    hold on
    if (abs(d) > abs(c))
        plot(x,-c*x/d,'--')
        yn_xvecs = x;
        yn_yvecs = -c*x/d;
    else
        plot(-d*y/c,y,'--')
        yn_xvecs = -d*y/c;
        yn_yvecs = y;
    end
    
    alen = 10;
    for k = 2:nv-1,
        if mod(nv,2)==0 | ((nv+1)/2) ~= k
            p = [xn_xvecs(k); xn_yvecs(k)];
            v = A*p;
            v = .1*v/norm(v);
            p2 = p+v;
            arrow(p,p2,'tipangle',12,'length',alen);
        end
    end
    
    for k = 2:nv-1,
        if mod(nv,2)==0 | ((nv+1)/2) ~= k
            p = [yn_xvecs(k); yn_yvecs(k)];
            v = A*p;
            v = .1*v/norm(v);
            p2 = p+v;
            arrow(p,p2,'tipangle',12,'length',alen);
        end
    end
    