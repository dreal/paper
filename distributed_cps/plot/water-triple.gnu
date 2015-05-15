
set terminal postscript eps colour dashed dl 20 size 2.5,2.2
set output 'water-triple.eps'
set key inside right top vertical Right noreverse noenhanced autotitle nobox
set datafile missing '-'
set key bottom

set grid
set title "Networked water tanks (triple)" 
set yrange [1:100000]
set ylabel 'time (s)'

set xrange [1:5]
set xlabel 'k'
set xtics 1 

set style line 1 lc rgb "red" lt 1 lw 1 pt 7 pi -1 ps 1
set style line 3 lc rgb "blue"  lt 6 lw 1 pt 13 pi -1 ps 1
set style line 4 lc rgb "red" lt 1 lw 1 pt 6 pi -1 ps 1
set style line 6 lc rgb "blue"  lt 6 lw 1 pt 12 pi -1 ps 1

set logscale y
plot 'water-triple.dat' u 1:2 w lp ls 1 t 'new (unsat)', 'water-triple.dat' u 1:4 w lp ls 3 t 'standard (unsat)', 'water-triple.dat' u 1:5 w lp ls 4 t 'new (sat)', 'water-triple.dat' u 1:7 w lp ls 6 t 'standard (sat)'



