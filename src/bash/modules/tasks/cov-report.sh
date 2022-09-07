#!/bin/bash

function tasks.cov_report {

    lib.run_tasks "$(infer.cov_report)" "$@"

}
