#! /bin/bash

now="$(date +'%m/%d/%Y')"


echo "Date: $now"
echo
echo "User: $USER"
echo
echo "Name of shell: $0"
echo
echo "System uptime: $(uptime --pretty)"
echo
echo "Logged in users: $(users)"
echo
