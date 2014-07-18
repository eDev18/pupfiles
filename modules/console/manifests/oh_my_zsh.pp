class console::oh_my_zsh {
    require console::zsh
    aur_package {'zsh-completions':}
    include base::indiv0
    include base::packaging::pkgfile
    enduser_file {'.zshrc':
        source => 'console/zsh',
        require => [
            Package['zsh'],                         # Actual shell
            Class['base::packaging::pkgfile'],      # Required for not-found hook
            Enduser_file['.zsh']                    # Parent directory
        ]
    }
    enduser_file {'.zprofile':
        source => 'console/zsh',
        require => [
            Package['zsh'],                         # Actual shell
            Enduser_file['.zsh']                    # Parent directory
        ]
    }
    enduser_file {'.zsh':
        ensure  => directory,
        source  => 'console/zsh',
        recurse => true
    }
    file {'/etc/zsh/oh-my-zsh':
        ensure  => directory,
        source  => 'puppet:///modules/console/zsh/.zsh',
        recurse => true
    }
    file {'/etc/zsh/zprofile':
        mode    => 755,
        content => "emulate sh -c 'source /etc/profile'\nsource /etc/zsh/oh-my-zsh/zshrc\n"
    }
    file {'/etc/skel/.zshrc':
        mode    => 755,
        content => "source /etc/zsh/zprofile\n"
    }
}
