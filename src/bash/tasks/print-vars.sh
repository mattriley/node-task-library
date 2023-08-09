#!/bin/bash

function tasks.print_vars {

    local all_var_names; all_var_names="$(util.var_names "$VARS")"
    local var_names; [[ "$*" =~ "--all" ]] && var_names="$all_var_names" || var_names="$PRINT_VARS"
    local vars_printed; vars_printed="$(list.length "$var_names")"
    local vars_total; vars_total="$(echo -n "$VARS" | grep -c '^')"

    # shellcheck disable=2317
    function print_var {
        [ "$1" = "STAGE" ] && [ "${!1}" = 'prod' ] && style="$BOLD$RED" || style="$BOLD"
        reporter.info "$1=${style}${!1}${NORM}"
    }

    reporter.newline
    list.each "$var_names" print_var
    reporter.newline
    reporter.info "${vars_printed} of ${vars_total} task vars displayed"
    reporter.newline

}
