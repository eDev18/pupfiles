class base::ian {
    include base
    include base::systemd
    include console::zsh
    include development
    user { 'ian':
        home       => '/home/ian',
        managehome => true,
        gid        => 'users',
        groups     => [
            'users',
            'wheel',
            'adm',
        ],
        membership => minimum,
        comment    => 'Nikita Pekin',
        system     => false,
        shell      => '/bin/zsh',
        require    => [Class['console::zsh'], Group['adm']],
        password   => template('private/base/ian/password'),
    }
    file { '/home/ian':
        ensure => directory,
        mode   => 0600,
        owner  => 'ian',
        group  => 'users',
    }
}
