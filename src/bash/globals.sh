#!/bin/bash

export TASK_LIBRARY_ROOT="./node_modules/task-library"
export SUPPORTED_TEST_RUNNERS="jest | mocha | tap | tape | zora"
export SEP=" | "

export NORM; NORM=$(tput sgr0)
export BOLD; BOLD=$(tput bold)
export RED; RED=$(tput setaf 1)
export GREEN; GREEN=$(tput setaf 2)
export YELLOW; YELLOW=$(tput setaf 3)

export GREEN_FLAG="${GREEN}▇${NORM}"
export RED_FLAG="${RED}▇${NORM}"
export WHITE_FLAG="▇"
