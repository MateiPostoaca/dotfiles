#!/bin/sh

base_dir="$HOME/Documents/Notes/Todo"

files=("morning.norg" "midday.norg" "evening.norg")

for file in "${files[@]}"; do
    file_path="$base_dir/$file"
    if [[ -f "$file_path" ]]; then
        sed -i 's/(-)/( )/g; s/(x)/( )/g' "$file_path"
    fi
done
