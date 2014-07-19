class browser::firefox::ui {
    firefox_pref { 'layout.spellcheckDefault':
        value     => 1, # Spellcheck everywhere
        isdefault => true
    }
    firefox_pref { 'browser.urlbar.trimURLs':
        value => false # Do not hide "http://" in the URL bar
    }
    firefox_pref { 'browser.uitour.enabled':
        value => false # Disable the UI tour
    }
}
