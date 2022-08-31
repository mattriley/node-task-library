#!/bin/bash

function tasks.print_vars {

    set -e

    # All

    [ "$1" = "--all" ] && echo "$VARS" && exit

    # Selected

    echo

    function callback {
        [ "$1" = "STAGE" ] && [ "${!1}" = 'prod' ] && style="$BOLD$RED" || style="$BOLD"
        echo "$1=${style}${!1}${NORM}"
    }

    util.list.each "$PRINT_VARS"

    vars_printed=$(util.list.length "$PRINT_VARS")
    vars_total=$(echo -n "$VARS" | grep -c '^')

    echo
    echo "${vars_printed} of ${vars_total} task vars displayed"
    echo

}
