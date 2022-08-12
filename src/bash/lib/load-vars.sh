function load_vars {
    env_before="$(env)"
    source "./task-vars" 2> /dev/null
    vars=$(extract_function_names "$TASK_LIBRARY_ROOT/src/bash/lib/task-vars.sh")

    while IFS= read -r name; do
        [ -z "${!name}" ] && export $name="$($name)"
    done <<< "$vars"

    env_after="$(env)"
    export VARS=$(sort <(echo "$env_before" ) <(echo "$env_after") | uniq -u)
    echo
    npx task print-vars
}