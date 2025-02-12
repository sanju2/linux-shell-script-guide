#!/bin/bash
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
output_file="cpu_usage_log_${timestamp}.txt"
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)
echo "$(date) CPU Usage: ${cpu_usage}%" | tee "$output_file"
echo "CPU usage logged in $output_file."
