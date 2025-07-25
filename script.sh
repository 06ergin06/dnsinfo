#!/bin/bash
# Copyright (C) 2025 İbrahim Hakkı Ergin <ibrahimh.ergin@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.

red="\e[31m"
green="\e[32m"
white="\e[1;37m"	
reset="\e[0m"

echo "Welcome to dnsinfo app"

website=$1

if [[ -z "$1" ]]; then
    echo -e "${red}You must enter a parameter as a website.${reset}"
    exit 1
fi


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

echo -e "${white}SOA${reset}"
soa=$(dig $website SOA +short)
if [[ -z "$soa" ]]; then
    echo -e "${red}Record is empty${reset}"
else 
    echo -e "${green}${soa}${reset}"
fi
