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

echo "MX"
mx=$(dig kosakymm.com MX +short)
echo $mx

echo "TXT"
txt=$(dig kosakymm.com TXT +short)
echo $txt

echo "CNAME"
cname=$(dig www.blogger.com CNAME +short)
echo $cname