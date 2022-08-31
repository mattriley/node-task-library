#!/bin/bash

function tasks.metrics {

    set -e

    lib.run_task cov
    lib.run_task sloc
    lib.run_task metrics-summary

}
