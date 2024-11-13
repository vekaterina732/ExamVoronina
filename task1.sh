#!/bin/bash

target_dir="$HOME/TXT"
if [ ! -d "$target_dir" ]; then
    mkdir "$target_dir"
fi

moved_count=0
for txt_file in "$HOME"/*.txt; do
    if [ -f "$txt_file" ]; then
        moved_count=$((moved_count + 1))
        mv "$txt_file" "$target_dir"
    fi
done

echo "$moved_count txt files moved"
