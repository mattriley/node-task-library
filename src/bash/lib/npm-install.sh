function npm_install {

    local options="$1"
    local packages="${@:2}"
    [ "$packages" ] && local message=" ${BOLD}$packages${NORM}"
    echo -n "Installing$message..."
    local output=$(npm i $options $packages 2>&1)
    [ $? ] && echo " done" && return 0
    echo " done with errors"
    echo "$output"

}
