class browser::firefox::startup {
    firefox_pref { 'browser.startup.page':
        value => 3, # Re-open tabs on startup
    }
}
