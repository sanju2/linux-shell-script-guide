#!/bin/bash
# Output file for system information
output_file="system_info.txt"
os_name=$(grep ^NAME= /etc/os-release | cut -d= -f2 | tr -d '"')
os_version=$(grep ^VERSION= /etc/os-release | cut -d= -f2 | tr -d '"')
ip_address=$(hostname -I | awk '{print $1}')
default_gateway=$(ip route | grep default | awk '{print $3}')
dns_servers=$(grep "nameserver" /etc/resolv.conf | awk '{print $2}' | paste -sd ", ")
{
    echo "System Information:"
    echo "-------------------"
    echo "Hostname: $(hostname)"
    echo "OS Name: $os_name"
    echo "OS Version: $os_version"
    echo "IP Address: $ip_address"
    echo "Default Gateway: $default_gateway"
    echo "DNS Servers: $dns_servers"
    echo ""
    echo "Memory:"
    free -h
    echo ""
    echo "Disk Space:"
    df -h
} | tee "$output_file"
echo "System info saved to $output_file."
