#!/bin/bash

function tasks.readme_template_gen.precondition {

    [ -f "$README_TEMPLATE" ] && echo "$README_TEMPLATE already exists"

}

function tasks.readme_template_gen {

    cat > "$README_TEMPLATE" <<'EOF'
<%- lib.renderOpening() %>

## Architecture

<%- await lib.renderModuleDiagram() %>
EOF

}
