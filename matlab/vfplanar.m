function z = planarvf(vf,p,xrange,nx,yrange,ny)
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
    