#!/bin/bash

function tasks.itermocil_config_gen {

    cat << EOF > "$ITERMOCIL_CONFIG" 
windows:
  - name: $PACKAGE_NAME
    root: $(pwd)
    layout: $ITERMOCIL_LAYOUT
    panes:
EOF

    # shellcheck disable=2317
    function callback {
        cat << EOF >> "$ITERMOCIL_CONFIG" 
      - commands:
        - npx task $1
EOF
    }

    list.each "$DEV_TASKS"

}
