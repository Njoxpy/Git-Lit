#!/bin/bash

# Function to check if Git is installed
check_git_installed() {
    if ! command -v git &> /dev/null; then
        echo "Git is not installed. Please install Git before using this tool."
        exit 1
    fi
}

# Function to check if the operating system is a desktop OS
check_desktop_os() {
    case "$(uname -s)" in
        Linux*)     # Check if Linux
            ;;
        Darwin*)    # Check if macOS
            ;;
        CYGWIN*)    # Check if Windows/Cygwin
            ;;
        MINGW*)     # Check if Windows/MinGW
            ;;
        *)
            echo "This script is intended for desktop computers only."
            exit 1
            ;;
    esac
}

# Main function for your tool
main() {
    # Check if Git is installed
    check_git_installed

    # Check if running on a desktop OS
    check_desktop_os

    # Continue with your tool's logic here
    echo "Git is installed and running on a desktop OS. Continuing with your tool..."
}

# Call the main function
main
