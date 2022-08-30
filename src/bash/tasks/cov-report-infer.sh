#!/bin/bash

set -e

run_tasks "$(infer_test_task "cov-report" "$DEFAULT_COV_REPORT_TASK")"
