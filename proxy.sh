#!/bin/bash
#

set -e

export HTTP_PROXY=http://127.0.0.1:20171
export HTTPS_PROXY=http://127.0.0.1:20171

exec $@

