class desktop::wm {
    package {'wmname':}
    
    include desktop::wm::2bwm
    #include desktop::wm::bspwm
    #include desktop::wm::sxhkd
}
