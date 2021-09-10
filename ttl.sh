#!/bin/bash
sudo iptables -t mangle -A POSTROUTING -j TTL --ttl-set 65
# iptables -t mangle -I PREROUTING -j TTL --ttl-inc 2
# iptables -t mangle -A POSTROUTING -j TTL --ttl-set 128
ping -c 4 127.0.0.1
ping -c 4 ya.ru