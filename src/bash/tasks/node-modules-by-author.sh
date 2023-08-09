#!/bin/bash

# shellcheck disable=2153,2038,2317

function tasks.node_modules_by_author {

    local search_text="$AUTHOR_NAME"
    local base_directory="$NODE_MODULES"
    local delimiter="|"

    local matches; matches=$(find "$base_directory" -type f -exec grep -l "$search_text" {} + | xargs -n 1 dirname | sort -u | sed "s|^$base_directory/||g" | tr '\n' "$delimiter")

    local author_name=${AUTHOR_NAME// /_};
    author_name=$(echo "$author_name" | tr '[:upper:]' '[:lower:]')
    local author_dir="node_modules_by_$author_name"

    local dest="$PACKAGE_ROOT/$author_dir"

    function link_author_node_module {
        local target; target="$(pwd)/$NODE_MODULES/$1"
        local link; link="$(pwd)/$dest/$1"
        fs.dir_exists "$target" && mkdir -p "$dest" && ln -s "$target" "$link"
    }

    rm -rf "$dest" && \
    list.each "$matches" link_author_node_module


}
