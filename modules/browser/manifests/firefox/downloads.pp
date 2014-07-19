class browser::firefox::downloads {
    firefox_pref { 'browser.download.dir':
        value => '~/downloads'
    }
}
