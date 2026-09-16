#!/bin/bash

gpu_load=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | head -n1 | xargs)

if [[ -z "$gpu_load" ]]; then
    echo "GPU N/A"

else
    printf "$gpu_load"

fi