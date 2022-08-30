#!/bin/bash

[ -f "$SERVER" ] && "$SERVER not found" && exit

nodemon "$SERVER" "$@"
