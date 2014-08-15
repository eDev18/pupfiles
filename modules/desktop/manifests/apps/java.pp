class desktop::apps::java {
    $jdk_package = 'jdk'

    package{$jdk_package:} # JDK 8
    package{ 'maven':      # Maven 3
        require => Package[$jdk_package]
    }
}
