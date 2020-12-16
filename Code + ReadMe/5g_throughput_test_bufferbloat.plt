set terminal png
set output "5g_Throughput.png"
set xlabel "Time (in Seconds)"
set ylabel "Throughput (Mbps)"
plot "Building_Throughput.txt" using 1:2 with linespoints title "Throughput at 1Gbps Data rate, RLC Buffer 10Mb"
