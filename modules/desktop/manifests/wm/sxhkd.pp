class desktop::wm::sxhkd {
    aur_package { 'sxhkd': }
    enduser_file { '.config/sxhkd':
        ensure  => directory,
        source  => 'desktop/wm/sxhkd',
        recurse => true,
        require => Package[ 'sxhkd' ],
    }
}
