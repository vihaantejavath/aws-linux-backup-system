#!/bin/bash

LATEST=$(aws s3 ls s3://backupbucket32323232/backups/ | sort | tail -n1 | awk '{print $4}')
aws s3 cp s3://backupbucket32323232/backups/$LATEST /tmp/

gpg --yes --batch --passphrase="Backup32" -d /tmp/$LATEST > /tmp/decrypted.tar.gz

mkdir -p /tmp/restore
tar -xzf /tmp/decrypted.tar.gz -C /tmp/restore

echo "✅ Restored to /tmp/restore/"
