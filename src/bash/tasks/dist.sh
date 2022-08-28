#!/bin/bash
  
fs.remkdir "$DIST"

npx task dist-static
npx task dist-infer

[ "$DIST_FLATTEN" = "true" ] && fs.flatten "$DIST"

exit 0
