function length {

    local IFS="$SEP"
    local arr=($1) # splits on each character of $IFS (space or pipe)
    echo "${#arr[@]}"
    
}
