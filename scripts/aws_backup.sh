#!/bin/bash

# 🔧 VARIABLES
TIMESTAMP=$(date +"%Y-%m-%d-%H%M")
SRC_DIR="/home/ubuntu/data"
ARCHIVE="/tmp/backup-$TIMESTAMP.tar.gz"
ENCRYPTED="/tmp/backup-$TIMESTAMP.tar.gz.gpg"
BUCKET="backupbucket32323232"
PASSPHRASE="Backup@32"

# 📦 COMPRESS the data
tar -czf "$ARCHIVE" "$SRC_DIR"

# 🔐 ENCRYPT the archive
gpg --yes --batch --passphrase="$PASSPHRASE" -c "$ARCHIVE"

# ☁️ UPLOAD to S3
aws s3 cp "$ENCRYPTED" s3://$BUCKET/backups/

# ✅ Clean up
rm -f "$ARCHIVE" "$ENCRYPTED"
