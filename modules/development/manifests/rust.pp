class development::rust {
    aur_package {'rust-nightly':}
    package {'sdl2':}
    include base::packaging::multilib
    package {'lib32-sdl2':}
}
