class desktop::xorg (
    $wm = '2bwm'
) {
    package { 'xorg-server': }
    package { 'xorg-xinit': }
    package { 'xorg-xsetroot': } # Provides `xsetroot` command.
    package { 'xorg-xrdb': }     # Provides `xrdb` command.
    enduser_file { '.xinitrc':
        content => template('desktop/xorg/.xinitrc.erb'),
        require => Package['xorg-server'],
    }
}
