#!/bin/bash
 
SOURCE="/tmp/devops-test/server.log"
BACKUP_DIR="/tmp/backup"
DATE=$(date +%Y%m%d)
DEST="$BACKUP_DIR/server_${DATE}.log"
 
mkdir -p "$BACKUP_DIR"
 
if [ ! -f "$SOURCE" ]; then
    echo "Error: Source log file not found"
    exit 1
fi
 
if cp "$SOURCE" "$DEST"; then
    echo "Backup Completed: $DEST"
else
    echo "Error: Backup failed"
    exit 1
fi
