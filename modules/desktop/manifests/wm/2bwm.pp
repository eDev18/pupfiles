class desktop::wm::2bwm {
    package {'conky':}
    aur_package {'bar-aint-recursive-bskv-git':}
    aur_package {'tamsynmod':}
    aur_package {'dzen2':}
    aur_package {'dmenu-patchy':}
    enduser_file { '.2bwm':
        ensure  => directory,
        source  => 'desktop/wm/2bwm',
        recurse => true,
        mode    => 0744,
        notify  => Exec['make-2bwm'],
        noroot  => true
    }
    enduser_file { '.2bwm/config.h':
        ensure  => present,
        content => template('desktop/wm/2bwm/config.h.erb'),
        require => Enduser_file['.2bwm'],
        noroot  => true,
        notify  => Exec['make-2bwm']
    }
    file { '/usr/bin/2bwm_dmenu.sh':
        ensure  => present,
        source  => 'puppet:///modules/desktop/wm/2bwm/2bwm_dmenu.sh'
    }
    exec { 'make-2bwm':
        command     => '/usr/bin/env make',
        cwd         => '/home/indiv0/.2bwm',
        refreshonly => true
    }
    enduser_file { '.config/2bwm':
        ensure  => directory,
        source  => 'desktop/wm/2bwm',
        recurse => true,
        mode    => 0744,
        require => Enduser_file['.2bwm'],
        notify  => Exec['make-2bwm'],
        noroot  => true
    }
    enduser_file { '.config/2bwm/panel/panel_conky':
        ensure  => present,
        content => template('desktop/wm/2bwm/.config/2bwm/panel/panel_conky.erb'),
        mode    => 0744,
        require => Enduser_file['.config/2bwm'],
        notify  => Exec['make-2bwm'],
        noroot  => true
    }
}
