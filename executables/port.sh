#!/bin/bash
[[ -n "$2" ]] || { echo "Usage: ./port.sh <tcp/udp> <port number>"; exit 0 ; }
iptables -I INPUT 1 -p $1 -m $1 --dport $2 -j ACCEPT
