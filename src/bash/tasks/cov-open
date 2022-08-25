#!/bin/bash
  
npx task cov-report

report="$(set -- "$COVERAGE/**/index.html"; echo "$1")"
open -a "Google Chrome" "$report"
