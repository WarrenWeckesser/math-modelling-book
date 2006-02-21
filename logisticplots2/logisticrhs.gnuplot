
xmin = -0.25
xmax = 1.25
ymin = -0.3
ymax = 0.3
reset
clear
set zeroaxis linestyle -1
set xtics axis
set ytics axis
set label "\$y\$" at xmax,-0.03
set label "\$\\frac{dy}{dt}\$" at 0.05,ymax
unset key
unset border
plot [xmin:xmax] [ymin:ymax] x*(1-x) w lines lt -1

set terminal latex
set output "logisticrhs.tex"
rep
