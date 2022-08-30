#!/bin/bash

set -e

run_tasks "$(infer_test_task "cov" "$DEFAULT_COV_TASK")"
