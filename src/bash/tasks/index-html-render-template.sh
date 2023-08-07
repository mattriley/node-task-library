#!/bin/bash

function tasks.index_html_render_template.precondition {

    [ ! -f "$INDEX_HTML_TEMPLATE" ] && echo "$INDEX_HTML_TEMPLATE not found"

}

function tasks.index_html_render_template {

    cat > "$INDEX_HTML" <<< "$(eval "cat <<EOF
$(<"$INDEX_HTML_TEMPLATE")
EOF" 2> /dev/null)"

}
