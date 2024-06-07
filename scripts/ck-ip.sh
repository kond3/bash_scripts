#!/bin/bash

# Author: kond3
# Date: 23/04/2024
# Last modified: 23/04/2024 14:11:07

# Description
# Simple script to open firefox checking the IP given as argument

# Usage
# ./ck-ip <IP>

echo ""
if [[ $1 = "" ]];then
  echo -e "Usage: \t ck-ip <IP address>\n"
  exit 1
fi

if which firefox;then
  firefox https://www.ipqualityscore.com/free-ip-lookup-proxy-vpn-test/lookup/$1
else
  echo -e "Error: \t Firefox must be installed on the system for this script to work"
  exit 1
fi
echo ""

exit 0
