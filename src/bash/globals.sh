#!/bin/bash

export TASK_LIBRARY_ROOT="./node_modules/task-library"
export SUPPORTED_TEST_RUNNERS="jest | mocha | tap | tape | zora"
export SEP=" | "

export NORM; NORM=$(tput sgr0)
export BOLD; BOLD=$(tput bold)
export RED; RED=$(tput setaf 1)
export GRE; GRE=$(tput setaf 2)
export YEL; YEL=$(tput setaf 3)
