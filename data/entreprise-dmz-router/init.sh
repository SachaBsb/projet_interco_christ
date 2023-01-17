#!/bin/sh
set -x

ip r r default via 10.128.0.2

# Enlever les autorisations
iptables -P FORWARD DROP

# Autoriser toutes requêtes du réseaux local
iptables -A FORWARD -s 10.0.0.0/9 -j ACCEPT

#Autoriser les pings
iptables -A FORWARD -p icmp -j ACCEPT

# Autoriser les trames HTTP


iptables -A FORWARD -d 10.0.0.5 -p tcp --dport 80 -j ACCEPT
iptables -A FORWARD -s 10.0.0.5 -p tcp --sport 80 -j ACCEPT

# Autoriser les trames DNS


iptables -A FORWARD -d 10.0.0.3 -p udp --dport 53 -j ACCEPT
iptables -A FORWARD -s 10.0.0.3 -p udp --sport 53 -j ACCEPT
