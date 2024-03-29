#!/bin/bash

function tasks.readme_template.precondition {

    fs.file_exists "$README_TEMPLATE" && echo "existing $README_TEMPLATE found"

}

function tasks.readme_template {

    cat > "$README_TEMPLATE" <<'EOF'
<%- lib.renderOpening() %>

## Architecture

<%- await lib.renderModuleDiagram() %>
EOF

}
