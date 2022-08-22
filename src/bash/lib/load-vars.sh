function load_vars {
    env_before="$(env)"
    source "./task-vars" 2> /dev/null
    root=${ROOT_OVERRIDE:-"$ROOT"}
    [ "$root" ] && source "$root/task-vars" 2> /dev/null
    vars=$(export_functions "$TASK_LIBRARY_ROOT/src/bash/vars")

    while IFS= read -r name; do
        override_name="${name}_OVERRIDE"
        [ "${!override_name}" ] && export $name="${!override_name}"
        [ -z "${!name}" ] && export $name="$($name)"
    done <<< "$vars"

    env_after="$(env)"
    export VARS=$(sort <(echo "$env_before" ) <(echo "$env_after") | uniq -u)
    echo
    npx task print-vars
}
