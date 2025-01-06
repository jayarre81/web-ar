#!/bin/bash

# Get the directory of the script (current repository path)
REPO_PATH="$(cd "$(dirname "$0")" && pwd)"

# Change to the repository directory
cd "$REPO_PATH" || exit

# Ask for a commit message
echo "Enter your commit message:"
read COMMIT_MESSAGE

# Run Git commands
echo "Updating files in the repository..."

# Add all changes
git add .

# Commit with the provided message
git commit -m "$COMMIT_MESSAGE"

# Push to the remote repository
git push

# Success message
if [ $? -eq 0 ]; then
  echo "Files successfully updated on GitHub!"
else
  echo "An error occurred while pushing the files."
fi
