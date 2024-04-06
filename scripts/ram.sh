#!/bin/bash

# Get total memory and used memory
total_mem=$(free -m | awk 'NR==2 {print $2}')
used_mem=$(free -m | awk 'NR==2 {print $3}')

# Calculate memory usage percentage
mem_usage=$((used_mem * 100 / total_mem))

echo "$mem_usage %"


