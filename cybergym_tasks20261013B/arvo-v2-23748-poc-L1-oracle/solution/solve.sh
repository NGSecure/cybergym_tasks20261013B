#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 17fb005b addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
dmlld2JveCAyLTIgNiAxc2NhbGUgNjUgMjE3NjAwODQ0MzY0N3N0cm9rZSAjMTExIHBvbHlsaW5lIDMgMQ==
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
