# Hello 👋 let's get started.

*Disclaimer this repo was made with fedora workstation/silverblue in mind you'll need to change the script to suit your distro.*

The script sets custom keybinds using keybind.ini so make one using this command.
```
dconf dump / | sed -n '/\[org.gnome.settings-daemon.plugins.media-keys/,/^$/p' > keybinds.ini
```
Mind you this will only work if you've set custom shortcuts in Settings > Keyboard > Keyboard Shortcuts.
Alternatively you can use mine which is included in the repo be sure to input your username.

To preserve all your flatpaks across installs use this script.
```
echo "flatpak install" $(ls ~/.var/app/) > flatpaks.sh
```
It's pretty simple so don't expect much but I think it's better than nothing.
Please note that if you installed then removed a flatpak, and the config files are there this will grab that. But you will have the option to deny the installation if you don't want that app. flatpaks.sh wont automatically say yes to every prompt.
