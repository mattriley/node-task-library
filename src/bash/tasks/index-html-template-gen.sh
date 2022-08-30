#!/bin/bash

[ -f "$INDEX_HTML_TEMPLATE" ] && warn "$INDEX_HTML_TEMPLATE already exists" && exit

cat > "$INDEX_HTML_TEMPLATE" <<'EOF'
<!DOCTYPE html>
<html lang="en">

<head>
    <title>$INDEX_HTML_TITLE</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="title" content="$INDEX_HTML_TITLE">
    <meta name="description" content="$INDEX_HTML_DESCRIPTION">
    <meta name="author" content="$INDEX_HTML_AUTHOR">
    <meta name="url" content="$INDEX_HTML_URL">
    <link rel="stylesheet" href="./app.css" />
    <script type="text/JavaScript" src="https://mattriley.github.io/web-components.js"></script>
    <script type="module" src="./app.js" defer></script>
</head>

<body>
    <div id="app"></div>
</body>
</html>
EOF
