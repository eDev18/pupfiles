class console {
    enduser_file {'.config':
        ensure => directory
    }
    include console::ssh
    include console::screen
    include console::scripts
    include console::git
    include console::htop
    include console::shutils
    include console::oh_my_zsh
    include console::term
}
