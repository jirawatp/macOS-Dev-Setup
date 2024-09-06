#!/bin/bash

# Directory containing your cloned repositories
REPO_DIR="$HOME/Documents/Github"

# Navigate to the directory with your repositories
cd $REPO_DIR

# Loop through each directory (each repository)
for dir in */; do
  # Enter the repository directory
  cd "$dir"

  # Fetch the latest changes
  git fetch

  # Define the branches you want to check and update
  branches=("main" "master" "develop" "beta" "nonprod")

  # Loop through each branch and update if it exists
  for branch in "${branches[@]}"; do
    if git rev-parse --verify "$branch" >/dev/null 2>&1; then
      git checkout "$branch"
      git pull origin "$branch"
      echo "Updated $dir to the latest $branch branch."
    else
      echo "Branch $branch not found in $dir."
    fi
  done

  # Move back to the parent directory
  cd ..

done
