
STEP 1
// get NYU 5G mmWave Module for NS-3
git clone https://github.com/nyuwireless-unipd/ns3-mmwave.git

STEP 2 

Compile the module

STEP 3
Once NS-3 is successfully compiled, copy the test_bufferbloat.cc in scratch folder

STEP 4

bool rlcAmEnabled = true;
Config::SetDefault ("ns3::LteRlcAm::MaxTxBufferSize", UintegerValue (10*1024 * 1024));
 app->Setup (ns3TcpSocket, sinkAddress, 1400, 5000000, DataRate ("300Mb/s"));

STEP 5 

run the test_bufferbloat.cc
$test_bufferbloat.cc

To plot Throughput 

$gnuplot 5g_throughput_test_bufferbloat.plt


To plot RTT

$gnuplot 5g_rtt_test_bufferbloat.plt

---------------------------------------x-----------------------------------------

To simulate different TCP variants in mmwave network follow the steps below.

1: Copy the file "sync_AIP.cc" in scratch folder.

2: run "./waf --r scratch/sync_AIP" from ns3-mmwave directory.

note: you will get 3 txt files "Building_Throughput.txt", "Building_RTT.txt" and "Building_Congestion.txt" after running the above command in ns3-mmwave directory. Using these txt files you can generate graphs. Also copy files Building_Throughput.plt", "Building_RTT.plt" and "Building_Congestion.plt" in ns3-mmwave directory.

3: To generate graphs: 
for Throughput: run "gnuplot Building_Throughput.plt" in ns3-mmave directory.
for Congestion: run "gnuplot Building_Congestion.plt" in ns3-mmave directory.
for RTT: run "gnuplot Building_RTT.plt" in ns3-mmave directory.

note: now you have generate graphs for a particular TCP (according to the program you have generate graphs for H-TCP). That you can verify from the line in sync_AIp.cc program;

#int tcp_protocol = 8; //and also line

#switch(tcp_ptotocol)

we have implemented a switch case to select the desired TCP variant. By changing the "int tcp_ptotocol = 1" you can change the protocol variant.

Along with this, we have also provided different environment model. For simulation purposes, we have used case 3 that includes three building. If you wish to run your simulation in different model just change the line;

#int scenario = 3 // or 1 or 2 or 4 