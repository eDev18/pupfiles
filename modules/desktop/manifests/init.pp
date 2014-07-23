class desktop (
    $laptop = false,
    $graphics_drivers = 'nvidia',
    $browser = 'firefox',
    $apps = true,
    $fonts = true,
    $media = true,
    $games = true
) {
    include desktop::xorg
    include desktop::wm
    case $graphics_drivers {
        'nvidia': {
            include desktop::graphics::nvidia
        }
        'intel': {
            include desktop::graphics::intel
        }
    }
    if $browser {
        browser {"${browser}":}
    }
    if $apps {
        include desktop::apps
    }
    if $fonts {
        include desktop::fonts
    }
    if $media {
        include desktop::media
    }
    if $games {
        include desktop::games
    }
}
