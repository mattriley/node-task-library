#!/bin/bash

set -e

function f1 { npm.has_dev_dependency "cloc" && echo "cloc-sloc"; }
run_tasks "$(infer_tasks)"
