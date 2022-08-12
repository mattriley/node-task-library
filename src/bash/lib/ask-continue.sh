function ask_continue {
    echo
    read -p "👀 Continue? " choice
    case "$choice" in 
        y|Y ) echo;;
        n|N ) echo "Aborting..."; echo; exit 1;;
        * ) echo "Invalid input. Aborting..."; echo; exit 1;;
    esac
}
