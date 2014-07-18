# Set X cursor to left pointer.
xsetroot -cursor_name left_ptr

# Pulseaudio
pulseaudio --start --daemonize
# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd ~/.config/mpd/mpd.conf

# Set X resources
xbindkeys
#xset +fp /usr/share/fonts/local/
#xset fp rehash
[[ -f ~/.config/Xresources ]] && xrdb -load ~/.config/Xresources
xrdb -merge ~/.colors/base16-tomorrow.dark.xresources

# Urxvtd
urxvtd -q -o -f &

# Wallpaper
hsetroot -fill ~/.wallpaper/dubai.jpg

# Fix Java window errors (e.g. IntelliJ)
wmname LG3D

# Key bindings
sxhkd &

# WM
exec ~/.config/bspwm/wm

pulseaudio --kill
