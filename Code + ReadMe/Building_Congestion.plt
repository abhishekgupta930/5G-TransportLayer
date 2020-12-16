set terminal png
set output "Building_Congestion_calculation"
set xlabel "Time (in Seconds)"
set ylabel "Congestion window (segments)"
plot "Building_Congestion.txt" using 1:2 with linespoints title "Congestion"
