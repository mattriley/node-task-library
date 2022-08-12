function npm_install {
    options="$1"
    packages="${@:2}"
    [ "$packages" ] && message=" ${BOLD}$packages${NORM}"
    echo -n "Installing$message..."
    output=$(npm i $options $packages 2>&1)
    [ $? ] && echo " done" && return 0
    echo " done with errors"
    echo "$output"
}
