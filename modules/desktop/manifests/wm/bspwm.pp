class desktop::wm::bspwm {
    package {'acpi':} # Needed for bar
    package {'bc':}
    package {'lm_sensors':}
    package {'dmenu':}
    aur_package {'bspwm':}
    aur_package {'bar-aint-recursive-git':}
    aur_package {'gohufont':}
    aur_package {'stlarch_font':}
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
    enduser_file { '.config/bspwm/panel/panel_conky':
        ensure  => present,
        content => template('desktop/wm/bspwm/.config/bspwm/panel/panel_conky.erb'),
        mode    => 0744,
        require => Package['bspwm']
    }
}
