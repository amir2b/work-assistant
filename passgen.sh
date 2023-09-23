#!/bin/bash
#

set -e

tr -dc A-Za-z0-9 </dev/urandom | head -c ${1:-20} ; echo ''

