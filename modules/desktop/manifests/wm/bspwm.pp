class desktop::wm::bspwm {
    package { 'wmname': }
    aur_package { 'bspwm': }
    enduser_file { '.config/bspwm':
        ensure  => directory,
        source  => 'desktop/wm/bspwm',
        recurse => true,
        mode    => 0744,
        require => Package[ 'bspwm' ],
    }
}
