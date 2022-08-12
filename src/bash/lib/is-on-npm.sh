function is_on_npm {
    npm view > /dev/null 2>&1
    return "$?"
}
