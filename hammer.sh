#!/bin/sh
set -eu

MACH=$1
BLOCK=$2

(cd go; tar c *) | ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ec2-user@$MACH 'tar x'
ssh -t -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ec2-user@$MACH 'sudo yum install -y openssl libpcap; sudo ./yapscan -p443 '$BLOCK'.0.0.0/8'

