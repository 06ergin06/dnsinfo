#!/bin/bash

echo "Welcome to dnsinfo app"

website=$1

echo "-----$website-----"

echo "Nameserver"
nameserver=$(nslookup -query=NS $website | grep nameserver | awk '{print $4}')
echo $nameserver

echo "A"
a=$(nslookup -query=A kosakymm.com | grep Address |grep -v "#" | awk '{print $2}')
echo $a

