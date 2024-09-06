#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Print commands and their arguments as they are executed.
set -x

# Step 1: Install Homebrew if not installed
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Step 2: Install applications via Homebrew Cask

# Install Postman
if ! brew list --cask postman &>/dev/null; then
  echo "Installing Postman..."
  brew install --cask postman
fi

# Install Visual Studio Code
if ! brew list --cask visual-studio-code &>/dev/null; then
  echo "Installing Visual Studio Code..."
  brew install --cask visual-studio-code
fi

# Install Xcode
if ! xcode-select -p &>/dev/null; then
  echo "Installing Xcode..."
  brew install --cask xcode
fi

# Install Microsoft Office (includes Word, Excel, PowerPoint, etc.)
if ! brew list --cask microsoft-office &>/dev/null; then
  echo "Installing Microsoft Office..."
  brew install --cask microsoft-office
fi

# Install LINE
if ! brew list --cask line &>/dev/null; then
  echo "Installing LINE..."
  brew install --cask line
fi

# Install Sourcetree
if ! brew list --cask sourcetree &>/dev/null; then
  echo "Installing Sourcetree..."
  brew install --cask sourcetree
fi

# Install TablePlus
if ! brew list --cask tableplus &>/dev/null; then
  echo "Installing TablePlus..."
  brew install --cask tableplus
fi

# Install FileZilla
if ! brew list --cask filezilla &>/dev/null; then
  echo "Installing FileZilla..."
  brew install --cask filezilla
fi

# Install Google Chrome
if ! brew list --cask google-chrome &>/dev/null; then
  echo "Installing Google Chrome..."
  brew install --cask google-chrome
fi

echo "All applications have been installed!"
