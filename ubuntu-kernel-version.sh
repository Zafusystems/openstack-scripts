#!/bin/bash

#
# Simple script which prints all available Linux kernels on Ubuntu
# 
# 26.6.2018, ops@zafu.systems
#
# Usage: ./ubuntu-kernel-version.sh
#

apt search linux-image | grep -oP "linux-image-\d+\.\d{0,2}\.\d-\d{0,2}" | sort | uniq
