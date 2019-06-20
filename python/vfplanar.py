import numpy as np
import matplotlib.pyplot as plt


def vfplanar(vf, xrange, nx, yrange, ny, args=None):
    # XXX ported my old matlab file vfplanar.m.  Needs to be updated
    # to be more numpythonic.
    x = np.linspace(xrange[0], xrange[1], nx)
    y = np.linspace(yrange[0], yrange[1], ny)
    [X, Y] = np.meshgrid(x,y)
    z = [X, Y]
    U = np.zeros(X.shape)
    V = np.zeros(U.shape)
    for j in range(nx):
        for k in range(ny):
            if args is None:
                dx = vf(0, [x[j], y[k]])
            else:
                dx = vf(0, [x[j], y[k]], *args)
            U[k,j] = dx[0]
            V[k,j] = dx[1]
    plt.quiver(X, Y, U, V)
    return z
    