#!/bin/bash

[ -f "$SERVER" ] && "$SERVER not found" && exit 0

nodemon "$SERVER" "$@"
