#!/bin/bash

function tasks.cov_report {

    lib.run_task cov-report-infer

    ui.newline

}
