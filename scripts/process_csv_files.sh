#!/bin/bash

shopt -s nullglob

files=(/app/input/*.csv)

if [ ${#files[@]} -eq 0 ]; then
    echo "No CSV files found."
else
    for file in "${files[@]}"; do
        echo "Processing $file"
        python ing2ofx.py "$file"
    done
fi
