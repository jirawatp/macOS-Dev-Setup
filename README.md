# macOS-Dev-Setup

This repository contains scripts to help set up a development environment on a new macOS computer. The scripts install various tools and automate the process of cloning and updating repositories from GitHub, as well as installing commonly used applications.

## Prerequisites

Before running the scripts, make sure you have the following:

- macOS
- Terminal access
- Internet connection
- GitHub personal access token (for `clone-repos.sh`)

## Scripts Overview

1. **`setup.sh`**: Installs all the necessary development tools (Homebrew, NVM, Node.js, Yarn, React, React Native, Go, Python, Java, jq, and Composer).
2. **`clone-repos.sh`**: Clones all your GitHub repositories into the `Documents/GitHub` folder.
3. **`update-repos.sh`**: Updates all repositories in the `Documents/GitHub` folder by fetching and pulling the latest changes for the specified branches.
4. **`install-apps.sh`**: Installs commonly used applications like Postman, VSCode, Xcode, MS Office, LINE, Sourcetree, TablePlus, FileZilla, and Google Chrome.

## Step-by-Step Usage

### 1. Setup Development Environment

The `setup.sh` script installs all necessary tools for your development environment.

#### Usage:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/yourusername/macOS-Dev-Setup.git
    cd macOS-Dev-Setup
    ```

2. **Make the script executable**:
    ```bash
    chmod +x setup.sh
    ```

3. **Run the script**:
    ```bash
    ./setup.sh
    ```

This script will install:
- Homebrew
- NVM (Node Version Manager)
- Node.js (using NVM)
- Yarn
- Create React App and React Native CLI
- Go
- Python
- Java (OpenJDK)
- jq (for JSON processing)
- Composer (PHP dependency manager)

### 2. Clone All Repositories

The `clone-repos.sh` script will clone all your GitHub repositories into the `Documents/GitHub` folder.

#### Prerequisites:

- Install `jq` (if not already installed by `setup.sh`):
    ```bash
    brew install jq
    ```

- Replace `your_github_username` and `your_personal_access_token` with your GitHub credentials in the script.

#### Usage:

1. **Make the script executable**:
    ```bash
    chmod +x clone-repos.sh
    ```

2. **Run the script**:
    ```bash
    ./clone-repos.sh
    ```

The script will fetch and clone all repositories associated with your GitHub account into the `Documents/GitHub` directory.

### 3. Update All Repositories

The `update-repos.sh` script will fetch and pull the latest changes for the specified branches (`main`, `master`, `develop`, `beta`, and `nonprod`) in all repositories located in the `Documents/GitHub` folder.

#### Usage:

1. **Make the script executable**:
    ```bash
    chmod +x update-repos.sh
    ```

2. **Run the script**:
    ```bash
    ./update-repos.sh
    ```

The script will loop through each repository in the `Documents/GitHub` folder and attempt to update the branches if they exist.

### 4. Install Applications

The `install-apps.sh` script installs common applications used for development and work, including Postman, VSCode, Xcode, MS Office, LINE, Sourcetree, TablePlus, FileZilla, and Google Chrome.

#### Usage:

1. **Make the script executable**:
    ```bash
    chmod +x install-apps.sh
    ```

2. **Run the script**:
    ```bash
    ./install-apps.sh
    ```

This script will install the following applications using Homebrew Cask:
- Postman
- Visual Studio Code (VSCode)
- Xcode
- Microsoft Office (Word, Excel, PowerPoint, etc.)
- LINE
- Sourcetree
- TablePlus
- FileZilla
- Google Chrome

## License

This project is licensed under the MIT License.
