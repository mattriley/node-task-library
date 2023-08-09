#!/bin/bash
# shellcheck disable=2317

function tasks.itermocil_config_gen {

    cat << EOF > "$ITERMOCIL_CONFIG" 
windows:
  - name: $PACKAGE_NAME
    root: $(pwd)
    layout: $ITERMOCIL_LAYOUT
    panes:
EOF

    function append_commands {
        cat << EOF >> "$ITERMOCIL_CONFIG" 
      - commands:
        - npx task $1
EOF
    }

    list.each "$DEV_TASKS" append_commands

}
