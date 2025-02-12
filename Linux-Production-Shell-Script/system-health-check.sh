#!/bin/bash
# Output file for system health check
output_file="system_health_check.txt"
# Disk usage alert threshold
threshold=80
{
    echo "System Health Check:"
    echo "---------------------"
    echo "Uptime: $(uptime)"
    echo "Load Average: $(cat /proc/loadavg)"
    echo "Memory Usage:"
    free -m
    echo ""
    echo "Disk Usage:"
    df -h | awk '{print $1, $5, $6}'
    echo ""
    echo "Partitions Above ${threshold}% Usage:"
    df -h | awk -v threshold="$threshold" '$5 ~ /[0-9]+%/ {gsub("%", "", $5); if ($5 >= threshold) print $1 " (" $6 "): "
$5"%"}'
} >"$output_file"
cat "$output_file"
echo "System health check results saved to $output_file"
