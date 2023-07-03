#!/bin/bash
#
# Different of Directories
#
# Usage:
#	ddiff path/to/directory1 path/to/directory2

path1="${1%/}"
path2="${2%/}"

files=($(find $1 $2 -type f -printf "%P\n" | sort | uniq))
for file in ${files[@]}; do
    if [ ! -f "$path1/$file" ]; then
        echo -e "\n\n$file\nFile not found: $path1/$file"
    elif [ ! -f "$path2/$file" ]; then
        echo -e "\n\n$file\nFile not found: $path2/$file"
    else
        if ! cmp -s "$path1/$file" "$path2/$file"; then
            echo -e "\n\n$file"
            diff "$path1/$file" "$path2/$file"
        fi
    fi
done
