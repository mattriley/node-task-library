#!/bin/bash

function tasks.ls {

    local list; list=$(compgen -A function | grep "tasks.")

    for val in $list; do

        IFS='.' read -ra arr <<< "$val"
        local task_name; task_name="${arr[1]}"
        local infer_func; infer_func="tasks.$task_name.infer"
        local inferred; fp.is_function "$infer_func" && inferred="$($infer_func)"
        echo "$task_name - $inferred"

    done

}
