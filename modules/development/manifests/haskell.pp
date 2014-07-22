class development::haskell {
    package {'ghc':}
    package {'alex':}
    package {'happy':}
    package { 'cabal-install':
        require => Package['ghc'],
        notify  => Exec['update-cabal']
    }
    exec { 'update-cabal':
        command => shellquote(
            '/usr/bin/env', 'cabal', 'update'
        ),
        environment => 'HOME=/home/indiv0',
        require     => Package['cabal-install'],
        notify      => Exec['install-pandoc-citeproc'],
        refreshonly => true
    }
    exec { 'install-pandoc-citeproc':
        command => shellquote(
            '/usr/bin/env', 'cabal', 'install', '--global', 'pandoc-citeproc'
        ),
        environment => 'HOME=/home/indiv0',
        require     => Package['cabal-install', 'alex', 'happy'],
        notify      => Exec['install-pandoc'],
        refreshonly => true
    }
    exec { 'install-pandoc':
        command => shellquote(
            '/usr/bin/env', 'cabal', 'install', '--global', 'pandoc'
        ),
        environment => 'HOME=/home/indiv0',
        require     => Package['cabal-install', 'alex', 'happy'],
        refreshonly => true
    }
}
