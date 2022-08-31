#!/bin/bash

function tasks.cov {

    set -e

    lib.run_task cov-infer

}
