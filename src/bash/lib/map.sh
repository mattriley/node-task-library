function map {
    local IFS="$SEP"
    local arr=($1) # splits on each character of $IFS (space or pipe)
    local fun=$2
    local out_sep="$3"
    local res=()
    for el in "${arr[@]}"; do res+=($($fun "$el")); done
    join "${res[*]}" "$out_sep" # joins on first character of $IFS (space)
}
