#!/bin/bash

# Author: kond3
# Date: 05/30/2024
# Last modified: 05/30/2024 10:09:25

# Description
# Simple script to create an alias for the watch command. Since the alias is just 'm', which was "available", the script is called monitoring and not watching, because the alias 'w' was not.

# Usage
# ./monitornig.sh <cmd> [lines]

echo ""

if  [[ "$1" = "" ]];then
        echo -e "Usage: \t m <cmd> [lines]"
        exit 0
fi

if [[ "$2" =~ [0-9].* ]];then
        watch -n 0.5 "$1 | tail -n $2"
else
        watch -n 0.5 "$1"
fi

echo ""
exit 0
