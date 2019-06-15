#
# File:  SIRscript.py
# Author: Warren Weckesser
#
# Copyright(c) 2005, 2006, 2019 Warren Weckesser
#

import numpy as np
from scipy.integrate import odeint
import matplotlib.pyplot as plt

#
# Get the SIR vector field function from SIRvectorfield.py.
#
from SIRvectorfield import SIRvectorfield

#
# Set the parameters.
#
r = 0.12
g = 0.07

#
# Set the initial conditions and put into the array x0.
#
S0 = 0.995
I0 = 0.005
R0 = 0.0
x0 = [S0, I0, R0]

#
# Create the time samples for the output of the
# ODE solver.
#
tfinal = 250.0
t = np.arange(0.0, tfinal, tfinal/200)

#
# Call the ODE solver.
#
x = odeint(SIRvectorfield, x0, t, args=(r, g))

outdata = np.zeros((len(t),4))
outdata[:,0] = t
outdata[:,1:] = x
np.savetxt('SIRdata.txt', outdata)

plt.plot(t, x[:, 0], '-', label='S')
plt.plot(t, x[:, 1], '--', label='I')
plt.plot(t, x[:, 2], ':', label='R')

plt.xlabel('t')
plt.title('Solution of the SIR Model (r=%s, gamma=%s)' % (r, g))
plt.legend(shadow=True)
plt.grid()
plt.savefig('SIRscript_output.eps')
