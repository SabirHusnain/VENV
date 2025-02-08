#!/bin/bash

# Set default values for the virtual environment name and path
name="${1:-myenv}"
path="${2:-$HOME/utils/venvs}"

# Ensure the virtual environment directory exists
if [ ! -d "$path" ]; then
    mkdir -p "$path"
fi

echo "Creating virtual environment '$name' in '$path'..."

# Full path to the virtual environment
venvPath="$path/$name"

# Create the virtual environment
sudo python3 -m venv "$venvPath"

# Ensure the virtual environment is created
if [ -d "$venvPath" ]; then
    # Successfully created the virtual environment
    echo "Successfully created virtual environment '$name' in $venvPath"
else
    # Unsuccessful in creating environment
    echo "There is an Error creating '$name' in $venvPath"
fi
