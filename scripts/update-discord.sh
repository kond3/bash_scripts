#!/bin/bash

# Author: andr3w
# Date: 19/12/2024
# Last modified: 12/19/2024 11:01:46

# Description
# Simple script to automatically update Discord

# Usage
# ./discord-update.sh

function nl() {
for (( i=0 ; i < $1 ; i++ ));do
      echo ""
  done
}

nl 1

echo -e "Downloading latest version... \n"

wget 'https://discord.com/api/download/stable?platform=linux&format=deb' -O /tmp/discord.deb --show-progress

echo -e "Installing latest version: sudo password required. \n"
sudo apt install /tmp/discord.deb

rm -rf /tmp/discord.deb

nl 1
exit 0
