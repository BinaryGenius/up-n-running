# Bring back window buttons.
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

# Because they're awesome.
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Computers aren't the only things that sleep.
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
