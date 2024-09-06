#!/bin/bash

# Replace with your GitHub username and access token
GITHUB_USERNAME="your_github_username"
GITHUB_TOKEN="your_personal_access_token"

# Destination directory
DEST_DIR="$HOME/Documents/Github"

# Base API URL to list all repos
BASE_API_URL="https://api.github.com/user/repos?per_page=100"

# Create the destination directory if it doesn't exist
mkdir -p $DEST_DIR
cd $DEST_DIR

page=1

# Loop through all pages of the API
while true; do
  API_URL="$BASE_API_URL&page=$page"

  # Fetch repositories for the current page
  repos=$(curl -s -u $GITHUB_USERNAME:$GITHUB_TOKEN $API_URL | jq -r '.[].ssh_url')

  # Break the loop if no more repositories are found
  if [[ -z "$repos" ]]; then
    break
  fi

  # Loop through each repo and clone if it doesn't already exist
  echo "$repos" | while read repo; do
    repo_name=$(basename "$repo" .git)
    
    if [ -d "$repo_name" ]; then
      echo "Skipping existing repository: $repo_name"
    else
      git clone $repo
    fi
  done

  # Increment the page number for the next iteration
  page=$((page + 1))
done
