#!/bin/bash

# Check if log directory is passed as an argument
if [ -z "$1" ]; then
  echo "Please pass an log directory argument"
  exit 1
fi

LOG_DIR="$1"

# Check if the provided directory exists
if [ ! -d "$LOG_DIR" ]; then
  echo "Error: Entered Log Directory '$LOG_DIR' does not exist."
  exit 1
fi

# Create a directory to store the archived logs
ARCHIVE_DIR="$HOME/log_archives"
mkdir -p "$ARCHIVE_DIR"
echo " Logs are to archived in :'$LOG_DIR'"

# Get the current date and time
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Name for the archive file
ARCHIVE_FILE="logs_archive_${TIMESTAMP}.tar.gz"

# Compress the logs into a .tar.gz file
sudo tar -czf "$ARCHIVE_DIR/$ARCHIVE_FILE" -C "$LOG_DIR" .

# Log the date and time of the archive
echo "Logs archived on $(date +"%Y-%m-%d %H:%M:%S") as $ARCHIVE_FILE" >> "$ARCHIVE_DIR/archive_log.txt"

echo "Logs from '$LOG_DIR' have been archived to '$ARCHIVE_DIR/$ARCHIVE_FILE'."
