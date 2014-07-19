define browser (
    $browser = 'firefox'
) {
    case $browser {
        'firefox': {
            include browser::firefox
        }
    }
}
