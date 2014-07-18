class desktop::wm {
    enduser_file {'.config':
        ensure => directory
    }
    include desktop::wm::bspwm
    include desktop::wm::sxhkd
}
