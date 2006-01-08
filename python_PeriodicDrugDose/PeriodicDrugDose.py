#!/usr/bin/python

# File: PeriodicDrugDose.py
#
# Warren Weckesser
# Department of Mathematics
# Colgate University
# Hamilton, NY 13346
#
#
# Python file for computing and plotting
# the solution to the problem of periodic drug
# doses.
#


import sys
import time
import os
import random
from math import exp


def runsolver():

    showxinf = 1

    r = 0.3
    h = 2
    b = 1

    xinf = b*exp(-r*h)/(1-exp(-r*h))

    periods = 10

    datafile = open('data.out','w')
    datafile.write("0 0\n")
    c0 = 0;
    for k in range(periods):
        c0 = c0 + b;
        n = 21
        for j in range(n):
            t = h*j/(n-1.)
            c = c0*exp(-r*t)
            datafile.write(str(t+k*h)+" "+str(c)+"\n")
        c0 = c
    datafile.close()

    plotstr = "\\\"data.out\\\" w l"
    if (showxinf == 0):
        cmd = "echo \" set xlabel \\\"t\\\"; set ylabel \\\"c(t)\\\"; set nokey; set size 0.75,0.75; set terminal postscript; set output \\\"PeriodicDrugDosePlot.eps\\\"; plot " + plotstr + "\" | gnuplot"
    else:
        plotstr = plotstr + ", "+str(xinf)
        cmd = "echo \" set xlabel \\\"t\\\"; set ylabel \\\"c(t)\\\"; set nokey; set size 0.75,0.75; set terminal postscript; set output \\\"PeriodicDrugDosePlotWithXinf.eps\\\"; plot " + plotstr + "\" | gnuplot"
    print cmd
    os.system(cmd)

if __name__ == '__main__':
    sys.stderr = sys.stdout
    runsolver()
