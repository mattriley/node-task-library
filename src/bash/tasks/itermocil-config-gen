#!/bin/bash
  
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
            - npx task $1
EOF
}

list.each "$DEV_TASKS"
