# macOS-Dev-Setup

This repository contains a shell script to set up a development environment on a new macOS computer. The script installs Homebrew, NVM, Node.js, Yarn, React, React Native, Go, Python, Java (OpenJDK), and Composer.

## Prerequisites

Before running the script, make sure you have the following:

- macOS
- Terminal access
- Internet connection

## Installation

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

## Script Overview

The script performs the following steps:

1. **Install Homebrew**: The macOS package manager.
2. **Add Homebrew to PATH**: Ensures Homebrew is available in the terminal.
3. **Install NVM (Node Version Manager)**: Manages multiple Node.js versions.
4. **Install Node.js**: Using NVM to install the latest LTS version.
5. **Install Yarn**: A package manager for JavaScript.
6. **Install Create React App and React Native CLI**: Tools for React and React Native development.
7. **Install Go**: A programming language.
8. **Set up Go workspace**: Configures the Go environment.
9. **Install Python**: A programming language.
10. **Install Java (OpenJDK)**: A programming language and platform.
11. **Set up Java environment variables**: Configures the Java environment.
12. **Install Composer**: A dependency manager for PHP.

## Verifying the Installation

After the script completes, you can verify the installation of each tool by running the following commands:

- **Homebrew**:
    ```bash
    brew --version
    ```

- **NVM**:
    ```bash
    nvm --version
    ```

- **Node.js**:
    ```bash
    node --version
    ```

- **Yarn**:
    ```bash
    yarn --version
    ```

- **Create React App**:
    ```bash
    create-react-app --version
    ```

- **React Native CLI**:
    ```bash
    react-native --version
    ```

- **Go**:
    ```bash
    go version
    ```

- **Python**:
    ```bash
    python3 --version
    ```

- **Pip**:
    ```bash
    pip3 --version
    ```

- **Java**:
    ```bash
    java -version
    ```

- **Composer**:
    ```bash
    composer --version
    ```

## Contribution

Feel free to submit issues or pull requests if you find any bugs or want to add new features.

## License

This project is licensed under the MIT License.
