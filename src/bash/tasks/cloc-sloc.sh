#!/bin/bash

set -e

npx cloc --json "$SRC" > "$METRICS_LOC"
