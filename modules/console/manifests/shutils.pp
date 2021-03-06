class console::shutils {
    package {'ack':}
    package {'the_silver_searcher':}
    package {'dos2unix':}
    package {'lftp':}
    package { 'mlocate':
        notify => Exec['updatedb']
    }
    package {'nemo':}

    # Update mlocate db.
    exec { 'updatedb':
        command     => '/usr/bin/env updatedb',
        refreshonly => true,
        require     => Package['mlocate']
    }
}
