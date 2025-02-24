#!/bin/bash

# Root directory
ROOT_DIR="$(pwd)"

# Path to the text file containing file paths to delete
FILE_LIST="$ROOT_DIR/filelist.txt"

# Check if the file list exists
if [[ ! -f "$FILE_LIST" ]]; then
    echo "File list not found at $FILE_LIST"
    exit 1
fi

# Read the file line by line
while IFS= read -r FILE_PATH; do
    # Skip empty lines or lines starting with '#'
    [[ -z "$FILE_PATH" || "$FILE_PATH" == \#* ]] && continue

    # Convert the file path to absolute path
    ABS_PATH="$ROOT_DIR/$FILE_PATH"

    # Find and delete the file, ignoring case sensitivity
    FOUND_FILES=$(find "$ROOT_DIR" -type f -iname "$(basename "$FILE_PATH")" -exec realpath {} \; | grep -i "$ABS_PATH")

    if [[ -n "$FOUND_FILES" ]]; then
        echo "Deleting: $FOUND_FILES"
        rm -f $FOUND_FILES
    else
        echo "File not found: $FILE_PATH"
    fi
done < "$FILE_LIST"

echo "Deleted Postal 3 files. You can now copy over Ultrapatch."