class desktop::apps {
    include desktop::apps::flashplugin
    include desktop::apps::hsetroot
    include desktop::apps::java
    include desktop::apps::meld
    include desktop::apps::tex
    include desktop::apps::ums

    package{'archey':}
    package{'cmatrix':}
    package{'evince':}
    package{'gimp':}
    package{'scrot':} 
    package{'skype':} 
    package{'tty-clock':}
    package{'unzip':}
    package{'zip':}
}
