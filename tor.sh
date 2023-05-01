#!/bin/bash
#
# sudo apt install -y tor

set -e

curl -x socks5h://127.0.0.1:9050 -s https://check.torproject.org/api/ip
