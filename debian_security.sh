#!/bin/bash

echo "Installing unattended-upgrades"
# Assuming Debian-Security is on by default (it's as I write this scrpit)
# otherwise you need to either sed or ssh and uncomment the line
ssh "${1}@${2}" 'sudo apt install unattended-upgrades'
echo "Security updagrades should be done automatically now"