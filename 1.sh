#!/bin/bash
wget https://raw.githubusercontent.com/Naturalny10/TLS/main/TOP1
wget https://raw.githubusercontent.com/Kazhna/RAP/main/bottom
wget https://github.com/Kazhna/RAP/raw/main/cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
tar -vxf cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
head -c -1 TOP1 > /home/ubuntu/cpuminer-gr-1.2.4.1-x86_64_linux/config.json
head -c -1 /etc/hostname >> /home/ubuntu/cpuminer-gr-1.2.4.1-x86_64_linux/config.json
head -c -1 bottom >> /home/ubuntu/cpuminer-gr-1.2.4.1-x86_64_linux/config.json
rm top bottom
cd cpuminer-gr-1.2.4.1-x86_64_linux
screen sudo ./cpuminer.sh
