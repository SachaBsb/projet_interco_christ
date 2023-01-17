#!/bin/sh
set -x

ip r r default via 10.128.0.3

touch /var/lib/dhcp/dhcpd.leases
dhcpd eth1

iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
