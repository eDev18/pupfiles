class desktop::apps::java {
    $jdk_package = 'jdk8-compat'

    package{$jdk_package:} # JDK 8
    package{ 'maven':      # Maven 3
        require => Package[$jdk_package]
    }
}
