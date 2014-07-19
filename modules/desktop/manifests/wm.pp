class desktop::wm {
    package {'dmenu':}
    package {'wmname':}
    
    include desktop::wm::bspwm
    include desktop::wm::sxhkd
}
