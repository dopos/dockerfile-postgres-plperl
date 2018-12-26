#!/usr/bin/env bash

# Run $INITDB_DIR/*.sh on every container start

set -Eeo pipefail

SRC=${SRC:-/$INITDB_DIR}

for f in $SRC/*.sh; do
    if [ -x "$f" ]; then
	echo "$0: running $f"
	"$f"
    elif [ -f "$f" ]; then
	echo "$0: sourcing $f"
	. "$f"
    fi
done
