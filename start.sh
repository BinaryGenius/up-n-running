#!/bin/bash

function globalcommands {
	# Gnome Tweak Essentials
	gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close' # Gnome add this back for the love of...
	gsettings set org.gnome.mutter center-new-windows true # No good reason not to have.
	gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true # One of the coolest. lazy features.

	# Because they're awesome.
	flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

	# Computers aren't the only things that sleep.
	gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true

	# Dark mode is the right mode.
	gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
	gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark # Keep theme consistent.

	# Why this isn't automatically set based on language I do not know.
	gsettings set org.gnome.desktop.interface clock-format '12h'

	# Load keybinds from keybinds.ini.
	dconf load / < keybinds.ini

	# Speed of typing with the comfort of a GUI.
	gsettings set org.gnome.nautilus.preferences always-use-location-entry true

	# Useful for notes or any time you need to create a file.
	mkdir /home/$USER/Templates; cd /home/$USER/Templates; touch MarkDown.md Shell\ Script.sh Text.txt

	# For finer control of volume.
	gsettings set org.gnome.settings-daemon.plugins.media-keys volume-step 5

	# Because lazy.
	gsettings set org.gnome.desktop.datetime automatic-timezone true

	# For gnome enhancements
	flatpak install com.mattjakeman.ExtensionManager -y

	# Fantastic browser
	flatpak install com.brave.Browser -y
	xdg-settings set default-web-browser com.brave.Browser.desktop
}

echo
        read -p "Type "workstation" or "silverblue" to pick a fedora distro: " cmd
	case $cmd in
                workstation)
			globalcommands
			sudo dnf remove firefox
                ;;
                silverblue)
			globalcommands
                	rpm-ostree override remove firefox
                ;;
esac
