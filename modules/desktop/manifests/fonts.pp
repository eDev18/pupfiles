class desktop::fonts {
    package {'ttf-opensans':}
    package {'ttf-lato':}
    package {'terminess-powerline-font':}
    package {'urw-garamond':}
    package {'texlive-fontsextra':}

    enduser_file { '.fonts':
        ensure  => directory,
        source  => 'desktop/fonts',
        recurse => true,
    }
}
