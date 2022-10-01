#!/bin/bash

export NORM; NORM=$(tput sgr0)
export BOLD; BOLD=$(tput bold)
export RED; RED=$(tput setaf 1)
export GREEN; GREEN=$(tput setaf 2)
export YELLOW; YELLOW=$(tput setaf 3)

export GREEN_FLAG="${GREEN}▇${NORM}"
export YELLOW_FLAG="${YELLOW}▇${NORM}"
export RED_FLAG="${RED}▇${NORM}"
export WHITE_FLAG="▇"
