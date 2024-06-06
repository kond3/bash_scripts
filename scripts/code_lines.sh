#!/bin/bash

# Author: kond3
# Date: 05/06/2024
# Last modified: 05/06/2024 11:57:36

# Description
# Simple script to count effective lines of code in a bash (or any other language that uses # as comments) script, cutting out empty lines and comments.

# Usage
# ./code_lines.sh <script.sh>

function nl() {
for i in {1..$1};do
  echo ""
  done
}

if [[ "$1" = "" ]];then
  echo -e "\nUsage: \t code_lines <script.sh>\n"
  exit 0
fi

nl 1
total=$(cat $1 | sed '/^$/d' | sed '/#/d' | wc -l)
echo -e "Total lines of code: \t $total"
nl 1

exit 0
