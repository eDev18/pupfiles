class server::services::mariadb (
    $service = false
) {
    $mysql_packages = ['mysql', 'libmysqlclient', 'mysql-clients']
    package { $mysql_packages:
        ensure => absent
    }
 
    package { 'mariadb':
        require => Package['mysql']
    }
    package { 'libmariadbclient':
        require => Package['libmysqlclient', 'mariadb']
    }
    package { 'mariadb-clients':
        require => Package['mysql-clients', 'mariadb']
    }

    if $service != false {
        systemd_service { 'mysqld':
            require => Package['mariadb']
        }
    }
}
