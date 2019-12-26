#!/usr/bin/env bash
scp ../../configs/sources.list root@$1:/etc/apt/
ssh $1 "apt update"
echo ""