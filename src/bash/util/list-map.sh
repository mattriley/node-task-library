function list_map {

    local IFS="$SEP"
    local arr=($1)
    local func=$2
    local res=()

    for item in "${arr[@]}"; do 
        res+=($($func "$item"))
    done
    
    list_join "${res[*]}"

}
