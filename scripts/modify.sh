#!/bin/bash

# Author: kond3
# Date: 10/04/2024
# Last modified: 04/10/2024-12:55:40

# Description
# Simple script to update "Last modified" value in a script description.

# Usage
# modify <filename>

sed -i "s|^\# Last modif.*|# Last modified: $(date +%m/%d/%Y\ %H:%M:%S)|" $1

exit 0
