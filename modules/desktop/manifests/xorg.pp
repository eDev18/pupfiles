class desktop::xorg {
    package { 'xorg-server': }
    package { 'xorg-xinit': }
    package { 'xorg-xsetroot': } # Provides `xsetroot` command.
    package { 'xorg-xrdb': }     # Provides `xrdb` command.
    package { 'xbindkeys': }     # Provides `xbindkeys` command.
    enduser_file { '.xinitrc':
        source   => 'desktop/xorg',
        require  => Package['xorg-server'],
    }
}
