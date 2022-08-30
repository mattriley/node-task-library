#!/bin/bash

set -e

npx task itermocil-config-gen

mkdir -p "$HOME/.itermocil"

itermocil --here
