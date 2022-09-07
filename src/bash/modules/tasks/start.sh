#!/bin/bash

function tasks.start {

    lib.run_tasks "$(infer.start)" "$@"

}
