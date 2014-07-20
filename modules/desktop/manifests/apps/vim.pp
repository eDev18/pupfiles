class desktop::apps::vim {
    package {'vim':}
    enduser_file { '.vim':
        ensure  => directory,
        require => Package['vim'],
        noroot  => true
    }
    enduser_file { '.vimrc':
        ensure  => file,
        source  => 'desktop/apps/vim',
        require => Package['vim'],
        notify  => Exec['git vundle'],
        noroot  => true
    }
    exec { 'git vundle':
        command => '/usr/bin/sudo -u indiv0 git clone https://github.com/gmarik/Vundle /home/indiv0/.vim/bundle/Vundle.vim',
        require => [
            Package['git'],
            Package['vim'],
            Enduser_file['.vim'],
            Enduser_file['.vimrc'],
        ],
        notify      => Exec['vundle'],
        refreshonly => true
    }
    exec { 'vundle':
        command     => '/usr/bin/echo -ne "\n" | /usr/bin/sudo -u indiv0 /usr/bin/vim +PluginInstall +qall > /dev/null',
        require     => Exec['git vundle'],
        refreshonly => true
    }
}
