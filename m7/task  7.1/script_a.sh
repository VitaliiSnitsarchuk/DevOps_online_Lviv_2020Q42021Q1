#!/bin/bash

function  help {
	echo "--all key displays the IP addresses and symbolic names of all hosts in the current subnet"
	echo "--target key displays a list of open system TCP ports"
}


function all {
	echo "Scanning......10%........30%.........40%......50%..."
	echo "$(nmap -sP 192.168.0.0/24)"
}

function target {
 	echo "TCP ports found"
	echo "$(netstat -tulpn)"
}

if [ $# -eq 0 ]; then help
else 
	if [ $1 == "--all" ]; then all
	else 
		if [ $1 == "--target" ]; then target
	 	else echo "Wrong parameter"
		fi
	fi
fi

