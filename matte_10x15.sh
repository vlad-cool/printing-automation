#!/bin/sh
for file in "$@"
do
    echo $file
    ./convert.py $file 100 150
    ./print.sh tmp.png EMATTE 100x148mm on
done
