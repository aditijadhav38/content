#!/bin/bash

# Clean sysctl config directories
rm -rf /usr/lib/sysctl.d/* /run/sysctl.d/* /etc/sysctl.d/*

sed -i "/net.ipv6.conf.default.accept_redirects/d" /etc/sysctl.conf
echo "net.ipv6.conf.default.accept_redirects = 0" >> /etc/sysctl.conf

sysctl -w net.ipv6.conf.default.accept_redirects=0
