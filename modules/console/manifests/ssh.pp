class console::ssh {
    package {'autossh':}
    enduser_file {'.ssh':
        ensure => directory
    }
    enduser_file {'.ssh/config':
        content => template('console/ssh/config.erb')
    }
}
