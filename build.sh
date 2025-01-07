#!/bin/bash

# Default commit message
commit_message="Automated update"

# Run git commands
git add .
git commit -m "$commit_message"
git push

# Confirm completion
echo "Changes have been pushed to the repository with the message: '$commit_message'."
