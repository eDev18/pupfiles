class browser::firefox {
    package {'firefox':}
    include browser::firefox::betterprivacy
    include browser::firefox::checkdefaultbrowser
    include browser::firefox::cookiewhitelistwithbuttons
    include browser::firefox::duckduckgo
    include browser::firefox::downloads
    include browser::firefox::flashblock
    include browser::firefox::fonts
    include browser::firefox::greasemonkey
    include browser::firefox::httpseverywhere
    include browser::firefox::httpsfinder
    include browser::firefox::network
    include browser::firefox::newtabpage
    include browser::firefox::nofirstrun
    include browser::firefox::privacy
    include browser::firefox::profile
    include browser::firefox::refcontrol
    include browser::firefox::requestpolicy
    include browser::firefox::selfdestructingcookies
    include browser::firefox::startup
    include browser::firefox::sync
    include browser::firefox::ui
    include browser::firefox::warnings
}
