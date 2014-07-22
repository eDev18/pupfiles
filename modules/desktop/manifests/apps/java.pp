class desktop::apps::java {
    package{'jdk8-compat':} # JDK 8
    package{ 'maven':     # Maven 3
        require => Package['jdk-devel']
    }
}
