function fs.empty {

    [ -z "$(ls -A "$1")" ]

}
