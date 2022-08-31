#!/usr/bin/env bash
# use testnet settings,  if you need mainnet,  use ~/.kii/kiid.pid file instead
export LC_ALL=C

kii_pid=$(<~/.kii/testnet3/kiid.pid)
sudo gdb -batch -ex "source debug.gdb" kiid ${kii_pid}
