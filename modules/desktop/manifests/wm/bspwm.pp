class desktop::wm::bspwm {
    aur_package { 'bspwm': }
    enduser_file { '.config/bspwm':
        ensure  => directory,
        source  => 'desktop/wm/bspwm',
        recurse => true,
        require => Package[ 'bspwm' ],
    }
}
