#!/bin/bash

# 1. Define the BASE path (User path)
BASE_DIR="$HOME"

# 2. Define the input file
DOTFILES_FILE="./dotfiles_path.txt"
EXTRA_FILE="./additional_path.txt"

# Check if the list file exists
if [[ ! -f "$DOTFILES_FILE" ]]; then
    echo "Error: $DOTFILES_FILE not found."
    exit 1
fi

echo "Source Base: $BASE_DIR"
echo "Target: $(pwd)"
echo "-------------------------"

# 3. Read the file line by line
while IFS= read -r sub_path || [[ -n "$sub_path" ]]; do
    
    # Skip empty lines
    [[ -z "$sub_path" ]] && continue

    # Clean up the sub_path (remove leading slashes if they exist)
    sub_path="${sub_path#/}"

    # Combine Base + Sub-path
    FULL_PATH="$BASE_DIR/$sub_path"

    if [[ -e "$FULL_PATH" ]]; then
        echo "Copying: $FULL_PATH"
        # -a preserves attributes, -r is recursive
        cp -ar "$FULL_PATH" ./dotfiles
    else
        echo "Error: '$FULL_PATH' not found."
    fi

done < "$DOTFILES_FILE"

# Check if the list file exists
if [[ ! -f "$EXTRA_FILE" ]]; then
    echo "Error: $EXTRA_FILE not found."
    exit 1
fi

# 3. Read the file line by line
while IFS= read -r sub_path || [[ -n "$sub_path" ]]; do
    
    # Skip empty lines
    [[ -z "$sub_path" ]] && continue

    # Clean up the sub_path (remove leading slashes if they exist)
    sub_path="${sub_path#/}"

    # Combine Base + Sub-path
    FULL_PATH="$BASE_DIR/$sub_path"

    if [[ -e "$FULL_PATH" ]]; then
        echo "Copying: $FULL_PATH"
        # -a preserves attributes, -r is recursive
        cp -ar "$FULL_PATH" .
    else
        echo "Error: '$FULL_PATH' not found."
    fi

done < "$EXTRA_FILE"

echo "-------------------------"
echo "Bulk copy complete!"