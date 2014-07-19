class desktop::apps::flashplugin {
    package{'flashplugin':}
    include base::packaging::multilib
    package { 'lib32-flashplugin':
        require => Class['base::packaging::multilib']
    }
    file { '/etc/adobe/mms.cfg':
        ensure  => file,
        source  => 'puppet:///modules/desktop/apps/flashplugin/mms.cfg',
        require => Package['flashplugin'],
        owner   => 'root',
        group   => 'root'
    }
}
