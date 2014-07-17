class base::indiv0 {
    include base
    include base::systemd
    include console::zsh
    user { 'indiv0':
        home       => '/home/indiv0',
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
        password   => template('private/base/indiv0/password'),
    }
    file { '/home/indiv0':
        ensure => directory,
        mode   => 0600,
        owner  => 'indiv0',
        group  => 'users',
    }
}
