#!/usr/bin/env bash

while true; do
    for IP in $(wg | grep "allowed ips:" | sed -e 's/.*allowed ips: //g' | sed -e 's/, /\n/g' | grep "/32" | sed -e 's|/32||g'); do 
        ping -c1 -W1 $IP
        sleep 1
    done
done