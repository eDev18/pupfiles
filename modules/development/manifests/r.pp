class development::r {
    package { 'r':
        notify => Exec['update-r']
    }
    enduser_file { '.pandoc':
        ensure  => directory,
        source  => 'development/r',
        recurse => true,
        require => Package['r']
    }
    exec { 'update-r':
        command => shellquote(
            '/usr/bin/env', 'Rscript', '-e',
            'update.packages(ask = FALSE, repos = "http://cran.rstudio.org")'
        ),
        require => [Package['r'], Enduser_file['.pandoc']],
        notify => Exec[
            'install-knitr',
            'install-ascii',
            'install-memisc',
            'install-ggplot2'
        ],
        refreshonly => true
    }
    exec { 'install-knitr':
        command => shellquote(
            '/usr/bin/env', 'Rscript', '-e',
            'install.packages("knitr", repos = c("http://rforge.net", "http://cran.rstudio.org"), type="source")'
        ),
        require => [Package['r'], Enduser_file['.pandoc']],
        refreshonly => true
    }
    exec { 'install-ascii':
        command => shellquote(
            '/usr/bin/env', 'Rscript', '-e',
            'install.packages("ascii", repos = c("http://rforge.net", "http://cran.rstudio.org"))'
        ),
        require => [Package['r'], Enduser_file['.pandoc']],
        refreshonly => true
    }
    exec { 'install-memisc':
        command => shellquote(
            '/usr/bin/env', 'Rscript', '-e',
            'install.packages("memisc", repos = c("http://rforge.net", "http://cran.rstudio.org"))'
        ),
        require => [Package['r'], Enduser_file['.pandoc']],
        refreshonly => true
    }
    exec { 'install-ggplot2':
        command => shellquote(
            '/usr/bin/env', 'Rscript', '-e',
            'install.packages("ggplot2", repos = c("http://rforge.net", "http://cran.rstudio.org"))'
        ),
        require => [Package['r'], Enduser_file['.pandoc']],
        refreshonly => true
    }
}
