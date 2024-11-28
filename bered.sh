#!/bin/bash

sudo modprobe acpi_call
echo "Setting max nvidia frequency to $1"
sudo nvidia-smi -i 0 -lgc 210,$1
echo "Setting max cpu frequency to $2%"
echo "$2" | sudo tee /sys/devices/system/cpu/intel_pstate/max_perf_pct
sudo sysctl kernel.split_lock_mitigate=0
