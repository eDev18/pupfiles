class console {
    enduser_file {'.config':
        ensure => directory
    }
    include console::ssh
    include console::screen
    include console::git
    include console::shutils
    include console::oh_my_zsh
    include console::term
}
