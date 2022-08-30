#!/bin/bash

set -e

[ -f "$SERVER" ] && "$SERVER not found" && exit

nodemon "$SERVER" "$@"
