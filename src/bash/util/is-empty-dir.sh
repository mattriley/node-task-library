function is_empty_dir {

    [ -z "$(ls -A "$1")" ]

}
