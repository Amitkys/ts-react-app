#!/bin/bash

# Add all changes
git add .

# Commit with the message provided as the first argument
git commit -m "$1"

# Prompt for the branch if not provided
if [ -z "$2" ]; then
  read -p "Enter the branch name: " branch
else
  branch=$2
fi

# Push to the specified branch
git push origin "$branch"

