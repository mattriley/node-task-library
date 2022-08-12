function export_staged {
    source_name=$(echo "$1_$STAGE" | tr '[:lower:]' '[:upper:]')
    val=${!source_name}
    dest_name=$(echo "$1" | tr '[:lower:]' '[:upper:]')
    export $dest_name=$val
}
