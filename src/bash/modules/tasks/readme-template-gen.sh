#!/bin/bash

function tasks.readme_template_gen {

    [ -f "$README_TEMPLATE" ] && \
        reporter.task_warn "Skipping template generation. $README_TEMPLATE already exists" && \
        return

    cat > "$README_TEMPLATE" <<'EOF'
<%- lib.renderOpening() %>

## Architecture

<%- await lib.renderModuleDiagram() %>
EOF

}
