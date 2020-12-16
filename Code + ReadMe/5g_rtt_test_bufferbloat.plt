set terminal png
set output "5g_Rtt.png"
set xlabel "Time (in Seconds)"
set ylabel "RTT (seconds)"
plot "mmWave-tcp-rtt-newreno.txt" using 1:3 with linespoints title "RTT at 1Gbps, 10 MB RLC buffer"
