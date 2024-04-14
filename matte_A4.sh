#!/bin/sh
for file in "$@"
do
    echo $file
    ./convert.py $file 210 297
    ./print.sh tmp.png EMATTE A4
done
