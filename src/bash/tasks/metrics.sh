#!/bin/bash

function metrics {

    set -e

    run_task cov
    run_task sloc
    run_task metrics-summary

}
