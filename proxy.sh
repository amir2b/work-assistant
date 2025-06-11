#!/bin/bash
#

set -e

export HTTP_PROXY=http://127.0.0.1:20171
export HTTPS_PROXY=http://127.0.0.1:20171
export NO_PROXY=localhost,127.0.0.1,10.96.0.0/12,192.168.59.0/24,192.168.49.0/24,192.168.39.0/24

exec $@

