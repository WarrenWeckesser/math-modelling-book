#!/usr/bin/python

# File:   periodic_drug_dose.py
# Author: Warren Weckesser
#
# Python file for computing and plotting
# the solution to the problem of periodic drug
# doses.
#

from math import exp
import matplotlib.pyplot as plt


for showxinf, periods in [[False, 3], [True, 10]]:

    r = 0.3
    h = 2
    b = 1

    xinf = b*exp(-r*h)/(1-exp(-r*h))

    time = [0]
    conc = [0]

    c0 = 0;
    for k in range(periods):
        c0 = c0 + b;
        n = 21
        for j in range(n):
            t = h*j/(n-1.)
            c = c0*exp(-r*t)
            time.append(t + k*h)
            conc.append(c)
        c0 = c

    plt.plot(time, conc)
    if showxinf:
        plt.axhline(xinf, color='black', linestyle='--')
    plt.xlabel('t')
    plt.ylabel('c(t)')
    plt.grid()
    rootname = 'PeriodicDrugDosePlot'
    if showxinf:
        rootname += 'WithXinf'
    rootname += '.eps'
    plt.savefig(rootname)
    plt.close()
