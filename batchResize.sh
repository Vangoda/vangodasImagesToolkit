#!/bin/bash
# Check input params
if [[ -z $1 || -z $2 ]];
then
    read -e -p "Put in max width: " Width
    read -e -p "Put in max height: " Height
else
    Width=$1
    Height=$2
fi

# Collect the files based on extension
find "${PWD}/" \( \
    -iname "*.jpg" -o \
    -iname "*.jpeg" -o \
    -iname "*.png" -o \
    -iname "*.bmp" -o \
    -iname "*.webp" -o \
    -iname "*.gif" \
\) | \
# and pipe them to parallel to multithread
parallel --group --eta --bar -j$(nproc) '
    if ! magick identify -quiet -format "%w" {} >/dev/null 2>&1; then
        mv {} {}.BROKEN
    else
        w=$(magick identify -format "%w" {})
        h=$(magick identify -format "%h" {})
        if [ $w -ge $h ]; then
            magick {} -adaptive-resize "'${Width}'x>" {}
        else
            magick {} -adaptive-resize "x'${Height}'>" {}
        fi
    fi
';