#!/bin/bash

function tasks.lint {

    lib.run_tasks "$(infer.lint)"

}
