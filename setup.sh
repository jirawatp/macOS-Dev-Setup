#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Print commands and their arguments as they are executed.
set -x

# Step 1: Install Homebrew
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Add Homebrew to PATH
if ! grep -q 'eval "$(/opt/homebrew/bin/brew shellenv)"' ~/.zshrc; then
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>~/.zshrc
  source ~/.zshrc
fi

if ! grep -q 'eval "$(/usr/local/bin/brew shellenv)"' ~/.bash_profile; then
  echo 'eval "$(/usr/local/bin/brew shellenv)"' >>~/.bash_profile
  source ~/.bash_profile
fi

# Step 2: Install NVM (Node Version Manager)
if ! command -v nvm &>/dev/null; then
  echo "Installing NVM..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
fi

# Load NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install Node.js using NVM
nvm install --lts

# Step 3: Install Yarn
if ! command -v yarn &>/dev/null; then
  echo "Installing Yarn..."
  brew install yarn
fi

# Step 4: Install React and React Native
echo "Installing Create React App and React Native CLI..."
npm install -g create-react-app
npm install -g react-native-cli

# Step 5: Install Go
if ! command -v go &>/dev/null; then
  echo "Installing Go..."
  brew install go
fi

# Set Up Go Workspace
if ! grep -q 'export GOPATH=$HOME/go' ~/.zshrc; then
  echo 'export GOPATH=$HOME/go' >>~/.zshrc
  echo 'export PATH=$PATH:$GOPATH/bin' >>~/.zshrc
  echo 'export PATH=$PATH:/usr/local/go/bin' >>~/.zshrc
  source ~/.zshrc
fi

if ! grep -q 'export GOPATH=$HOME/go' ~/.bash_profile; then
  echo 'export GOPATH=$HOME/go' >>~/.bash_profile
  echo 'export PATH=$PATH:$GOPATH/bin' >>~/.bash_profile
  echo 'export PATH=$PATH:/usr/local/go/bin' >>~/.bash_profile
  source ~/.bash_profile
fi

# Step 6: Install Python
if ! command -v python3 &>/dev/null; then
  echo "Installing Python..."
  brew install python
fi

# Step 7: Install Java (OpenJDK)
if ! command -v java &>/dev/null; then
  echo "Installing Java (OpenJDK)..."
  brew install openjdk
fi

# Set Up Java Environment Variables
if ! grep -q 'export JAVA_HOME="$(brew --prefix)/opt/openjdk/libexec/openjdk.jdk/Contents/Home"' ~/.zshrc; then
  echo 'export JAVA_HOME="$(brew --prefix)/opt/openjdk/libexec/openjdk.jdk/Contents/Home"' >>~/.zshrc
  echo 'export PATH="$JAVA_HOME/bin:$PATH"' >>~/.zshrc
  source ~/.zshrc
fi

if ! grep -q 'export JAVA_HOME="$(brew --prefix)/opt/openjdk/libexec/openjdk.jdk/Contents/Home"' ~/.bash_profile; then
  echo 'export JAVA_HOME="$(brew --prefix)/opt/openjdk/libexec/openjdk.jdk/Contents/Home"' >>~/.bash_profile
  echo 'export PATH="$JAVA_HOME/bin:$PATH"' >>~/.bash_profile
  source ~/.bash_profile
fi

# Step 8: Install Composer
if ! command -v composer &>/dev/null; then
  echo "Installing Composer..."
  brew install composer
fi

echo "Setup complete!"
