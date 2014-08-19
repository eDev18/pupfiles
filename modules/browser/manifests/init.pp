define browser (
    $browser = 'chromium'
) {
    case $browser {
        'chromium': {
            include browser::chromium
        }
    }
}
