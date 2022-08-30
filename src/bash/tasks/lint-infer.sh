#!/bin/bash

set -e

function f1 { npm.has_dev_dependency "eslint" && echo "eslint"; }
run_tasks "$(infer_tasks)"
