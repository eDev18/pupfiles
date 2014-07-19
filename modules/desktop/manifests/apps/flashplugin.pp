class desktop::apps::flashplugin {
    package{'flashplugin':}
    include base::packaging::multilib
    package { 'lib32-flashplugin':
        require => Class['base::packaging::multilib']
    }
}
