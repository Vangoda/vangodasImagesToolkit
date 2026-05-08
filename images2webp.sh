#! /bin/bash
# Converts images to webP format.
# Supported formats are: PNG, JPEG, TIFF, WebP or raw Y'CbCr samples
# Will look in current directory and all of its subdirectories!

shopt -s extglob

find "${PWD}/" -regex ".*\.\(jpg\|png\|webp\|tiff\|jpeg\)" | parallel -eta cwebp {} -o {.}.webp