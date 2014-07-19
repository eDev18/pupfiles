class desktop::apps::ums {
    aur_package{'ums':}
    file { '/usr/bin/ums':
        ensure  => link,
        require => Aur_package['ums'],
        target  => '/opt/ums/UMS.sh'
    }
    enduser_file { '.config/UMS':
        ensure  => directory,
        require => Aur_package['ums'],
        noroot  => true
    }
    enduser_file { '.config/UMS/UMS.conf':
        ensure  => file,
        source  => 'desktop/apps/ums',
        require => Aur_package['ums'],
        noroot  => true
    }
}
