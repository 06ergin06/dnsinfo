#!/bin/bash
red="\e[31m"
green="\e[32m"
white="\e[1;37m"	
reset="\e[0m"

echo "Welcome to dnsinfo app"

website=$1

echo "-----$website-----"

echo -e "${white}Nameserver${reset}"
nameserver=$(dig $website NS +short)
if [[ -z "$nameserver" ]]; then
    echo -e "${red}Record is empty${reset}"
else 
    echo -e "${green}${nameserver}${reset}"
fi

echo -e "${white}IPv4${reset}"
a=$(dig $website A +short)
if [[ -z "$a" ]]; then
    echo -e "${red}Record is empty${reset}"
else 
    echo -e "${green}${a}${reset}"
fi

echo -e "${white}IPv6${reset}"
aaaa=$(dig $website AAAA +short)
if [[ -z "$aaaa" ]]; then
    echo -e "${red}Record is empty${reset}"
else 
    echo -e "${green}${aaaa}${reset}"
fi

echo -e "${white}MX${reset}"
mx=$(dig $website MX +short)
if [[ -z "$mx" ]]; then
    echo -e "${red}Record is empty${reset}"
else 
    echo -e "${green}${mx}${reset}"
fi

echo -e "${white}TXT${reset}"
txt=$(dig $website TXT +short)
if [[ -z "$txt" ]]; then
    echo -e "${red}Record is empty${reset}"
else 
    echo -e "${green}${txt}${reset}"
fi

echo -e "${white}CNAME${reset}"
cname=$(dig $website CNAME +short)
if [[ -z "$cname" ]]; then
    echo -e "${red}Record is empty${reset}"
else 
    echo -e "${green}${cname}${reset}"
fi