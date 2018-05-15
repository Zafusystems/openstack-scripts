#!/bin/bash

#
# Simple script which prints Openstack version
# 
# 15.5.2018, ops@zafu.systems
#
# Usage: ./op-version.sh
#

SOURCES_FILE="/etc/apt/sources.list.d/ubuntu-cloud.list"

OP_VERSION="$(awk -F'/' '/deb/ { print $5 }' "$SOURCES_FILE" | sed 's/main//')"

echo "Openstack version: ${OP_VERSION^}"
