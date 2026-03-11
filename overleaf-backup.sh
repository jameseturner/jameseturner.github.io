#!/bin/bash

# === CONFIG ===
OVERLEAF_DATA_DIR="/home/amesjames/overleaf-toolkit/data"
BACKUP_ROOT="/mnt/e/OverleafBackups"
ONEDRIVE_BACKUP_DIR="/mnt/c/Users/James/OneDrive - University of Leicester/OverleafBackups"


# Create backup folder with date
DATE=$(date +"%Y-%m-%d_%H-%M")
BACKUP_DIR="$BACKUP_ROOT/$DATE"
ONEDRIVE_DEST="$ONEDRIVE_BACKUP_DIR/$DATE"
mkdir -p "$BACKUP_DIR"

echo "Backing up Overleaf projects..."
cp -r "$OVERLEAF_DATA_DIR" "$BACKUP_DIR"

mkdir -p "$ONEDRIVE_DEST"
cp -r "$OVERLEAF_DATA_DIR" "$ONEDRIVE_DEST"

echo "Backup complete: $BACKUP_DIR"
