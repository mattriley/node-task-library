#!/bin/bash

[ ! -f "$INDEX_HTML_TEMPLATE" ] && warn "$INDEX_HTML_TEMPLATE not found" && exit 0

cat > "$INDEX_HTML" <<< $(eval "cat <<EOF
$(<$INDEX_HTML_TEMPLATE)
EOF" 2> /dev/null)