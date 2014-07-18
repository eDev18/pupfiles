class desktop::xorg {
    package { 'xorg-server': }
    package { 'xorg-xinit': }
    package { 'xorg-xsetroot': } # Provides `xsetroot` command.
    package { 'xorg-xrdb': }     # Provides `xrdb` command.
    enduser_file { '.xinitrc':
        source   => 'desktop/xorg',
        require  => Package['xorg-server'],
    }
}
