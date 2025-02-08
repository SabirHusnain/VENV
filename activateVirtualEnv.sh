#!/bin/bash

# Set default values for name and path
name=${1:-"genv"}
path=${2:-"$HOME/utils/venvs"}

# Full path to the virtual environment
envDir="$path/$name"

# Check if the virtual environment exists
if [ ! -d "$envDir" ]; then
    echo "Error: Virtual environment '$name' does not exist in $path"
    exit 1
fi

# Activate the virtual environment
activateScriptPath="$envDir/bin/activate"

if [ -f "$activateScriptPath" ]; then
    echo "Activating virtual environment '$name'..."
    source $activateScriptPath
    echo "Activated '$name'"
else
    echo "Error: Activation script not found for virtual environment '$name'"
    exit 1
fi
