#!/bin/sh
lpr \
    -o MediaType=$2 \
    -o PrintQuality=BestPhoto \
    -o PageSize=$3 \
    -o Borderless=On \
    -o CorrectionColor=EPSONStandard \
    -o GammaValue=1.8 \
    $1
