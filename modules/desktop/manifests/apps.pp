class desktop::apps {
    include desktop::apps::flashplugin
    include desktop::apps::hsetroot
    include desktop::apps::java
    include desktop::apps::meld
    include desktop::apps::redshift
    include desktop::apps::tex
    include desktop::apps::ums
    include desktop::apps::vim

    package{'archey':}
    package{'cmatrix':}
    package{'evince':}
    package{'gimp':}
    package{'mirage':}
    package{'scrot':} 
    package{'skype':} 
    package{'tty-clock':}
    package{'tree':}
    package{'unzip':}
    package{'zip':}
}
