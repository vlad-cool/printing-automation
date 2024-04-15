#!/bin/sh
lpr \
    -o MediaType=$2 \
    -o PrintQuality=BestPhoto \
    -o PageSize=$3 \
    -o Borderless=$4 \
    -o CorrectionColor=EPSONVivid \
    -o GammaValue=1.8 \
    -P EPSON_L800 \
    $1
