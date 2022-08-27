function list_filter {

    local IFS="$SEP"
    local arr=($1)
    local func=$2
    local out_sep="$3"
    local res=()
    
    for item in "${arr[@]}"; do 
        $func "$item" && res+=("$item")
    done
    
    list_join "${res[*]}" "$out_sep" # joins on first character of $IFS (space)

}
