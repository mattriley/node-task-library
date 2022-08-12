function for_each {
    local IFS="$SEP"
    local arr=($1) # splits on each character of $IFS (space or pipe)
    local fun=$2
    for el in "${arr[@]}"; do $fun "$el"; done
}
