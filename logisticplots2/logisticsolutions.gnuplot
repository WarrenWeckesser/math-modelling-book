
xmin = -3
xmax = 3
ymin = -0.5
ymax = 1.5
reset
clear
set zeroaxis linestyle -1
set xtics axis
set ytics axis
# set label "\$t\$" at xmax-0.08,0.08
# set label "\$y(t)\$" at 0.05,ymax
set label "t" at xmax-0.08,0.08
set label "y(t)" at 0.05,ymax
unset key
unset border
plot [xmin:xmax] [ymin:ymax]  0.25*exp(x)/((1-0.25)+0.25*exp(x)) w lines lt -1,  0.75*exp(x)/((1-0.75)+0.75*exp(x)) w lines lt -1, 1.1*exp(x)/((1-1.1)+1.1*exp(x)) w lines lt -1, 1 w lines lt -1, -0.1*exp(x)/(1.1-0.1*exp(x)) w lines lt -1

# set terminal latex
# set output "logisticsolutions.tex"
# rep

set terminal postscript eps
set output "logisticsolutions.eps"
rep
