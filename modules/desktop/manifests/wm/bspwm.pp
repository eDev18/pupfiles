class desktop::wm::bspwm {
    package {'acpi':} # Needed for bar
    aur_package {'bspwm':}
    aur_package {'bar-aint-recursive-git':}
    aur_package {'gohufont':}
    enduser_file { '.config/bspwm':
        ensure  => directory,
        source  => 'desktop/wm/bspwm',
        recurse => true,
        mode    => 0744,
        require => Package['bspwm']
    }
    enduser_file { '.config/bspwm/panel':
        ensure  => directory,
        source  => 'desktop/wm/bspwm',
        recurse => true,
        mode    => 0744,
        require => Package['bspwm']
    }
    enduser_file { '.config/bspwm/panel/panel':
        ensure  => present,
        content => template('desktop/wm/bspwm/.config/bspwm/panel/panel.erb'),
        mode    => 0744,
        require => Package['bspwm']
    }
}
