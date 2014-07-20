class console::screen {
    package {'tmux':}
    aur_package { 'tmuxinator':
        require => Package['tmux']
    }
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
    enduser_file { '.tmuxinator':
        ensure  => directory,
        source  => 'console/screen',
        require => Package['tmuxinator'],
        recurse => true
    }
}
