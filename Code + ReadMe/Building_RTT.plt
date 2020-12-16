set terminal png
set output "Building_RTT_calculation"
set xlabel "Time (in Seconds)"
set ylabel "RTT (seconds)"
plot "Building_RTT.txt" using 1:2 with linespoints title "RTT"
