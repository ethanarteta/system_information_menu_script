#!/bin/bash

# This is a Bash script to display system information with a menu for users.

while true; do
    clear  # Clear the terminal screen for a clean menu display
    echo "System Information Menu:"
    echo "1. Currently logged users"
    echo "2. Your shell directory"
    echo "3. Home Directory"
    echo "4. OS name & version"
    echo "5. Current working directory"
    echo "6. Number of users logged in"
    echo "7. Hard disk information"
    echo "8. CPU information"
    echo "9. Memory information"
    echo "10. File system information"
    echo "11. Currently running processes"
    echo "0. Quit"

    # Prompt the user to enter their choice
    read -p "Enter your choice (0-11): " choice

    case $choice in
        0)
            echo "Goodbye!"
            exit 0  # Exit the script when the user chooses to quit
            ;;
        1)
            who  # Display currently logged in users
            read -p "Press Enter to continue..."
            ;;
        2)
            echo "Your shell directory: $SHELL"  # Display the user's shell directory
            read -p "Press Enter to continue..."
            ;;
        3)
            echo "Home Directory: $HOME"  # Display the user's home directory
            read -p "Press Enter to continue..."
            ;;
        4)
            uname -a  # Display OS name and version
            read -p "Press Enter to continue..."
            ;;
        5)
            pwd  # Display the current working directory
            read -p "Press Enter to continue..."
            ;;
        6)
            who | wc -l  # Count the number of users logged in
            read -p "Press Enter to continue..."
            ;;
        7)
            df -h  # Display hard disk information
            read -p "Press Enter to continue..."
            ;;
        8)
            lscpu  # Display CPU information
            read -p "Press Enter to continue..."
            ;;
        9)
            free -m  # Display memory information
            read -p "Press Enter to continue..."
            ;;
        10)
            df -T  # Display file system information
            read -p "Press Enter to continue..."
            ;;
        11)
            ps aux  # Display currently running processes
            read -p "Press Enter to continue..."
            ;;
        *)
            echo "Invalid choice. Please enter a valid option (0-11)."
            read -p "Press Enter to continue..."
            ;;
    esac
done
