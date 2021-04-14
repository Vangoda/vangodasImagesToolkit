#! /bin/sh
parallel dwebp {} -o {.}.png ::: *.webp 
