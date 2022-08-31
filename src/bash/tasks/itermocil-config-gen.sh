#!/bin/bash

function tasks.itermocil_config_gen {

    set -e

    cat << EOF > "$ITERMOCIL_CONFIG" 
windows:
- name: $PACKAGE_NAME
    root: $(pwd)
    layout: tiled
    panes:
EOF

    function callback {
        cat << EOF >> "$ITERMOCIL_CONFIG" 
    - commands:
        - nvm use
        - run_task $1
EOF
    }

    list.each "$DEV_TASKS"

}
