
set terminal postscript eps colour dashed dl 20 size 2.3,2.2
set output 'thermostat-triple.eps'
set key inside right top vertical Right noreverse noenhanced autotitle nobox
set datafile missing '-'
#set key bottom
set key off

#set grid
set title "Thermostat (Triple)" 
set yrange [0.1:100000]
set format y "10^{%L}"
#set ylabel 'time (s)'

set xrange [1:5]
#set xlabel 'k'
set xtics 1 

set style line 1 lc rgb "black" lt 1 lw 2 pt 7 pi -1 ps 1.5
set style line 2 lc rgb "red" lt 3 lw 1 pt 5 pi -1 ps 1.5
set style line 3 lc rgb "blue"  lt 6 lw 1 pt 13 pi -1 ps 1.5
set style line 4 lc rgb "black" lt 1 lw 2 pt 6 pi -1 ps 1.2
set style line 5 lc rgb "red" lt 3 lw 1 pt 4 pi -1 ps 1.2
set style line 6 lc rgb "blue"  lt 6 lw 1 pt 12 pi -1 ps 1.5


set logscale y
plot 'thermostat-triple.dat' u 1:2 w lp ls 1 t 'new (unsat)', 'thermostat-triple.dat' u 1:3 w lp ls 2 t 'heuristic (unsat)', 'thermostat-triple.dat' u 1:4 w lp ls 3 t 'standard (unsat)', 'thermostat-triple.dat' u 1:5 w lp ls 4 t 'new (sat)', 'thermostat-triple.dat' u 1:6 w lp ls 5 t 'heuristic (sat)', 'thermostat-triple.dat' u 1:7 w lp ls 6 t 'standard (sat)'



