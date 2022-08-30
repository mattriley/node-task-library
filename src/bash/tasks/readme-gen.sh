#!/bin/bash
  
set -e

[ ! -f "$README_TEMPLATE" ] && warn "$README_TEMPLATE not found" && exit

node.exec_script "$README_GEN" > "$README"
npx task doctoc

git add "$README"
