#!/bin/bash

# shellcheck disable=SC2153

function tasks.node_modules_by_author {

    local search_text="$AUTHOR_NAME"
    local base_directory="$NODE_MODULES"
    local delimiter="|"

    local matches=$(find "$base_directory" -type f -exec grep -l "$search_text" {} + | xargs -n 1 dirname | sort -u | sed "s|^$base_directory/||g" | tr '\n' "$delimiter")

    local author_name=${AUTHOR_NAME// /_};
    author_name=$(echo "$author_name" | tr '[:upper:]' '[:lower:]')
    local author_dir="node_modules_by_$author_name"

    function callback {
        local target; target="$(pwd)/$NODE_MODULES/$1"
        local link; link="$(pwd)/$author_dir/$1"
        [ -d "$target" ] && ln -s "$target" "$link"
    }

    fs.re_mkdir "$author_dir" && \
    list.each "$matches"


}
