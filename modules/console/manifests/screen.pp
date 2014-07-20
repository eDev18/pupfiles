class console::screen {
    package {'tmux':}
    aur_package {'tmuxinator':}
    enduser_file { '.tmux.conf':
        ensure  => present,
        source  => 'console/screen',
        require => Package['tmux']
    }
    enduser_file { '.tmuxline':
        ensure  => present,
        source  => 'console/screen',
        require => Package['tmux']
    }
}
