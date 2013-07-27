#!/bin/bash
[[ -n "$2" ]] || { echo "Usage: ./delport.sh <tcp/udp> <port number>"; exit 0 ; }
iptables -D INPUT -p $1 -m $1 --dport $2 -j ACCEPT
