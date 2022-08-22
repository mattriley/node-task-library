function load_vars {
    env_before="$(env)"
    source "./task-vars" 2> /dev/null
    root=${ROOT_OVERRIDE:-"$ROOT"}
    [ "$root" ] && source "$root/task-vars" 2> /dev/null

    while IFS= read -r name; do
        override_name="${name}_OVERRIDE"
        [ "${!override_name}" ] && export $name="${!override_name}"
        [ -z "${!name}" ] && export $name="$($name)"
    done <<< "$VAR_NAMES"

    env_after="$(env)"
    export VARS=$(sort <(echo "$env_before" ) <(echo "$env_after") | uniq -u)
    echo
    npx task print-vars
}
