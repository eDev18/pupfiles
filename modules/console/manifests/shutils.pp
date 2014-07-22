class console::shutils {
    package {'ack':}
    package {'dos2unix':}
    package {'htop':}
    package {'lftp':}
    package { 'mlocate':
        notify => Exec['updatedb']
    }
    package {'ranger':}

    # Update mlocate db.
    exec { 'updatedb':
        command     => '/usr/bin/env updatedb',
        refreshonly => true,
        require     => Package['mlocate']
    }
}
