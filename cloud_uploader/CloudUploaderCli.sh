#!/bin/bash

# This script will upload a file to an S3 bucket
if [ -z "$1" ]; then
    echo "Please provide a file or directory path"
    exit 1
fi


FILE=$1

# Replace with your S3 bucket name
aws s3 cp "$FILE" "s3://$BUCKET_NAME/$(basename "$FILE")"

# Check if the upload was successful
if [ $? -eq 0 ]; then
    echo "$FILE uploaded to S3 bucket. Success"
    else
        echo "$FILE upload to S3 bucket. Failed"
fi
