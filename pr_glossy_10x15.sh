#!/bin/sh
for file in "$@"
do
    echo $file
    ./convert.py $file 100 150
    ./print.sh tmp.png EPREMGLOSS 100x148mm
done