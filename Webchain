#! /bin/bash
THREADS=$(grep -c ^processor /proc/cpuinfo)
THREADS=`expr $THREADS - 1`
wget https://github.com/webchain-network/webchain-miner/releases/download/v2.8.0/webchain-miner-2.8.0-linux-amd64.tar.gz
tar zxvf webchain-miner-2.8.0-linux-amd64.tar.gz
./webchain-miner -o pool.webchain.network:3333 -u 0x54b3bdd37f7d567d9cf4469fce2a51898307b1a2 -p x --thread=$THREADS
