#!/bin/bash

function tasks.cov_report {

    set -e

    lib.run_task cov-report-infer

}
