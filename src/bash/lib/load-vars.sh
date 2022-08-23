function load_vars {
    [ "$VARS" ] && return 0
    vars_path="$TASK_LIBRARY_ROOT/src/bash/vars"
    export_functions "$vars_path" > /dev/null
    var_names=$(export_functions "$vars_path")

    env_before="$(env)"
    source "./task-vars" 2> /dev/null
    root=${ROOT_OVERRIDE:-"$ROOT"}
    [ "$root" ] && source "$root/task-vars" 2> /dev/null
    env_after="$(env)"
    export VARS1=$(sort <(echo "$env_before" ) <(echo "$env_after") | uniq -u | sed 's;=.*;;')

    
    while IFS= read -r name; do
        # echo "$name"
        override_name="${name}_OVERRIDE"
        [ "${!override_name}" ] && export $name="${!override_name}"
        [ -z "${!name}" ] && export $name="$($name)"
    done <<< "$var_names"

    stage_upper=$(echo "$STAGE" | tr '[:lower:]' '[:upper:]')
    while IFS= read -r name; do
        # if [[ "$name" =~ __$stage_upper$ ]]; then
        if [[ "$name" =~ __$stage_upper$ ]]; then
            # echo "$name"
            stageless=${name/__$stage_upper/}
            export $stageless=${!name}
        fi

        # if [[ "$name" =~ __ ]]; then
        #     unset $name
        # fi
    done <<< "$VARS1"


    env_after="$(env)"
    export VARS=$(sort <(echo "$env_before" ) <(echo "$env_after") | uniq -u)
    echo
    npx task print-vars
}
