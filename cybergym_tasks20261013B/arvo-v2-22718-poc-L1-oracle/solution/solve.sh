#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit a9010da8 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
CgoKICA1ICA0CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBPICAKICAg/yD///8gICAgICAgICAgICAgICAgICAgICAgIEMgIAogICAgICAgIP8gICAg//8gICAgICAgICAgICAgICAgTyAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgQyAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBOICAKIDEgIDIgICD/CiAgMiAgMyAg/wogIDI0ICAgIP8KICA0ICAxICD/Ck0gIFJCQyAgMSA0ICAtMiAgCk0gIEVORCAgIA==
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
