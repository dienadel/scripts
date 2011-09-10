#!/bin/bash

echo "SELINUX=disabled" > /etc/selinux/config
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -F
iptables -X
/etc/init.d/iptables save
