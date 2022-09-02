#!/bin/bash

function tasks.index_html_render_template {

    

    [ ! -f "$INDEX_HTML_TEMPLATE" ] && util.warn "$INDEX_HTML_TEMPLATE not found" && return

    cat > "$INDEX_HTML" <<< $(eval "cat <<EOF
    $(<$INDEX_HTML_TEMPLATE)
    EOF" 2> /dev/null)

}
