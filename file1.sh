#!/bin/bash
sudo rm /var/lib/apt/lists/lock;
sudo apt-get update;
sudo apt-get -y install git make automake build-essential autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev &&
sudo sysctl -w vm.nr_hugepages=$((`grep -c ^processor /proc/cpuinfo` * 3)) &&
git clone https://github.com/JayDDee/cpuminer-opt && cd cpuminer-opt && ./build.sh;yes Y | sudo apt-get install screen &&
./cpuminer -a lyra2z -o stratum+tcp://us-east.lyra2z-hub.miningpoolhub.com:20581 -u quang2667.t1 -p x -t 27

