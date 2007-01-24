#
# File:  SIRscript.py
# Author: Warren Weckesser
#         Department of Mathematics
#         Colgate University
#
# Copyright(c) 2005, 2006 Warren Weckesser
#
#
# Load the SciPy libraries and Gnupot libraries.
#
from scipy import *
from scipy.integrate import odeint
#import Gnuplot
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
x0 = [S0,I0,R0]
#
# Create the time samples for the output of the
# ODE solver.
#
tfinal = 250.0
t = arange(0.0,tfinal,tfinal/200)
#
# Call the ODE solver.
#
x = odeint(SIRvectorfield,x0,t,args=(r,g))

outdata=zeros((len(t),4))
outdata[:,0]=t
outdata[:,1:]=x
outdata.tofile(open('SIRdata.txt','w'),sep=' ')

fh=open('SIRdata.gpi','w')
print >>fh,"""
set data style lines
set title 'Solution of the SIR Model  (r=%s, gamma=%s)
set xlabel 't'
set key
set terminal postscript eps color
set output "SIRscript_output.eps"
plot "SIRdata.txt" u 1:2 title 'S',"SIRdata.txt" u 1:3 t 'I',"SIRdata.txt" u 1:4 t 'R'
"""
print "Now run gnuplot as:    gnuplot SIRdata.gpi"
##
## Plot the solution.
##
#gp = Gnuplot.Gnuplot(persist=1)
#gp('set data style lines')
#title = 'Solution of the SIR Model  (r='+str(r)+', gamma='+str(g)+')'
#gp.title(title)
#gp.xlabel('t')
#gp('set key')
#Splot = Gnuplot.Data(t,x[:,0],title='S')
#Iplot = Gnuplot.Data(t,x[:,1],title='I')
#Rplot = Gnuplot.Data(t,x[:,2],title='R')
#gp.plot(Splot,Iplot,Rplot)
##
## The following replots the data to a file
## using Encapsulated Postscript (eps) format.
##
#gp('set terminal postscript eps color ')
#gp('set output "SIRscript_output.eps"')
#gp.replot()
#
