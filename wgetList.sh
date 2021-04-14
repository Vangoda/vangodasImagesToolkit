#! /bin/sh
cat images.csv | parallel --gnu "wget {}"