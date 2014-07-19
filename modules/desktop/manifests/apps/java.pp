class desktop::apps::java {
    package{'jdk-devel':} # JDK 8
    package{ 'maven':     # Maven 3
        require => Package['jdk-devel']
    }
}
