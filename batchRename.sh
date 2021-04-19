#! /bin/sh
i=1
prefix="galerija-"
for file in *.jpg *.png
do
    ext="${file##*.}"
    name=$(printf "%03d" "$i")
    mv "${file}" "${prefix}${name}.${ext}"
    i=$((i+1))
done