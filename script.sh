#!/bin/bash

# Change to your project directory
cd /home/ubuntu/AWS_works|| exit

# Pull the latest changes (optional, to avoid conflicts)
git pull origin main

# Add all changes to staging
git add .

# Commit changes with a custom message
commit_message="Automated commit on $(date)"
git commit -m "$commit_message"

# Push the changes to the remote repository
git push origin main

