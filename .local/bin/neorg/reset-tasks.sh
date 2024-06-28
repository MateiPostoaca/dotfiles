#!/bin/sh

# Base directory for the files
base_dir="$HOME/Documents/Notes/Todo"

# List of files to process
files=("morning.norg" "midday.norg" "evening.norg")

# Loop through each file
for file in "${files[@]}"; do
    file_path="$base_dir/$file"
    if [[ -f "$file_path" ]]; then
        # Use sed to replace '(x)' and '(-)' with '( )'
        sed -i 's/(-)/( )/g; s/(x)/( )/g' "$file_path"
        echo "Processed $file_path"
    else
        echo "File $file_path does not exist."
    fi
done
