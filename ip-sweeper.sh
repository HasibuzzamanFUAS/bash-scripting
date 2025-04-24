#!/bin/bash

# usage
# ./ip-sweeper.sh <ip address upto 3 octets e.g 192.186.1>

for ip in $(seq 1 254); do
    #echo "Pinging $1.$ip"
    ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done

