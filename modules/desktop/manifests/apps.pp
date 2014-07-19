class desktop::apps {
    include desktop::apps::flashplugin
    include desktop::apps::hsetroot
    include desktop::apps::java
    include desktop::apps::meld
    include desktop::apps::tex

    package{'archey':}
    package{'evince':}
    package{'gimp':}
    package{'skype':} 
    package{'tty-clock':}
}
