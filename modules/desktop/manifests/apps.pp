class desktop::apps {
    include desktop::apps::flashplugin
    include desktop::apps::hsetroot
    include desktop::apps::java
    include desktop::apps::meld
    include desktop::apps::redshift
    include desktop::apps::tex
    include desktop::apps::vim

    package{'xbindkeys':}
    package{'archey':}
    package{'cmatrix':}
    package{'xpdf':}
    package{'mirage':} 
    package{'scrot':} 
    package{'skype':} 
    package{'tree':}
    package{'unzip':}
    package{'zip':}
}
