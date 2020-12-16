set terminal png
set output "Building_Throughput_calculation"
set xlabel "Time (in Seconds)"
set ylabel "Throughput (Mbits/s)"
plot "Building_Throughput.txt" using 1:2 with linespoints title "Throughput"
