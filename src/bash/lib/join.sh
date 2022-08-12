function join {
    local sep=${2:-$SEP}
    echo "${1//${IFS:0:1}/$sep}"
}
