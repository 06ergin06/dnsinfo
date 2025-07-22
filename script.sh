#!/bin/bash

echo "Welcome to dnsinfo app"

website=$1

echo "-----$website-----"

echo "Nameserver"
nameserver=$(dig kosakymm.com NS +short)
echo $nameserver

echo "IPv4"
a=$(dig kosakymm.com A +short)
echo $a

echo "IPv6"
aaaa=$(dig kosakymm.com AAAA +short)
echo $aaaa

