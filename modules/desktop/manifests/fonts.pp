class desktop::fonts {
    package {'ttf-opensans':}
    package {'ttf-lato':}
    package {'terminess-powerline-font':}
    package {'urw-garamond':}
    package {'garamondx':}

    enduser_file { '.fonts':
        ensure  => directory,
        source  => 'desktop/fonts',
        recurse => true,
    }
}
