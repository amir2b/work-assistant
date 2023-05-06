#!/bin/bash
#
# https://github.com/wagoodman/dive
#
# Install Docker
#
# Usage:
#	dive.sh DOCKER_IMAHE_NAME
#	dive.sh DOCKER_IMAHE_NAME:TAG

set -e

docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive $@

