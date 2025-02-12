#!/bin/bash
# Define directories
backup_dir="/path/to/backup"
source_dir="/path/to/source"
source_name=$(basename "$source_dir")
tar -czf "$backup_dir/${source_name}_backup_$(date +%Y%m%d_%H%M%S).tar.gz" "$source_dir"
echo "Backup of $source_dir completed and saved to $backup_dir as ${source_name}_backup_$(
    date
    +%Y%m%d_%H%M%S
).tar.gz"
