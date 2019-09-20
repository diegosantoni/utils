#!/bin/bash

# Find the numbers of CPUs
CPUS=`lscpu | grep "CPU(s):" | grep -v NUMA | tr -d " " | awk '{split($0,a,":");print a[2]}'`
echo "Number of CPU(s):" $CPUS

# Find the last use of CPUs
echo "CPU use, last 1 minute  :" `uptime | awk '{split($0,a,"average: "); print a[2]}' | awk '{split($0,b,","); print b[1]","b[2]}'`"/$CPUS"
echo "CPU use, last 5 minutes :" `uptime | awk '{split($0,a,"average: "); print a[2]}' | awk '{split($0,b,","); print b[3]","b[4]}'`"/$CPUS"
echo "CPU use, last 15 minutes:" `uptime | awk '{split($0,a,"average: "); print a[2]}' | awk '{split($0,b,","); print b[5]","b[6]}'`"/$CPUS"

