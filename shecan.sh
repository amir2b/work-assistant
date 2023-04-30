#!/bin/bash

set -e

SHECAN_NS1="178.22.122.100"
SHECAN_NS2="185.51.200.2"

help() {
	echo
	echo "Usage:" 1>&2
	echo -e " resolv.sh [ -i|-r ]" 1>&2
	echo
	echo "Options:" 1>&2
	echo -e " -i \tInsert Shecan" 1>&2
	echo -e " -r \tRemove Shecan" 1>&2
	echo -e " -h \tDisplay this help" 1>&2
	exit
}

insert() {
	line=$(head -n 1 /etc/resolv.conf)
	if [ "$line" != "## Shecan" ]; then
		sudo sed -i '1i## Shecan' /etc/resolv.conf
		sudo sed -i "2inameserver $SHECAN_NS1" /etc/resolv.conf
		sudo sed -i "3inameserver $SHECAN_NS2" /etc/resolv.conf
	fi
}

remove() {
	line=$(head -n 1 /etc/resolv.conf)
	if [ "$line" == "## Shecan" ]; then
		sudo sed -i '1,3d' /etc/resolv.conf
	fi
}

while getopts "hir" options; do
	case "${options}" in
		h) help;;
		i) insert;;
		r) remove;;
	esac
done

# cat /etc/resolv.conf
grep -v '^#' /etc/resolv.conf
