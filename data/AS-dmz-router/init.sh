#!/bin/sh
set -x

#ip r r default via 120.0.32.5
# Enlever les autorisations
iptables -P FORWARD DROP

#Autoriser les pings
iptables -A FORWARD -p icmp -j ACCEPT

# Autoriser les trames DNS
iptables -A FORWARD -d 120.0.34.3 -p udp --dport 53 -j ACCEPT
iptables -A FORWARD -s 120.0.34.3 -p udp --sport 53 -j ACCEPT