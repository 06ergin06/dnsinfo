#!/bin/bash

echo "Welcome to dnsinfo app"

website=$1

echo "-----$website-----"

echo "Nameserver"
nameserver=$(dig $website NS +short)
echo $nameserver

echo "IPv4"
a=$(dig $website A +short)
echo $a

echo "IPv6"
aaaa=$(dig $website AAAA +short)
echo $aaaa

echo "MX"
mx=$(dig $website MX +short)
echo $mx

echo "TXT"
txt=$(dig $website TXT +short)
echo $txt

echo "CNAME"
cname=$(dig $website CNAME +short)
echo $cname