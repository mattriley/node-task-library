#!/bin/bash
  
set -e

[ ! -f "$README_TEMPLATE" ] && exit 0

 node_command="node"
 node_options=""

if npm.has_dev_dependency "@node-loader/babel"
then
    node_options="--experimental-loader @node-loader/babel"
    export BABEL_OMIT_PRESETS="@babel/preset-env"
elif npm.has_dev_dependency "@babel/core"
then
    node_command="babel-node"
fi

NODE_OPTIONS="$node_options" \
$node_command "$README_GEN" > "$README"

npx task doctoc

git add "$README"
