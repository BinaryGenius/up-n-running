# Hello 👋 let's get started.

*Disclaimer this repo was made with fedora workstation/silverblue in mind you'll need to change the script to suit your distro.*

The script sets custom keybinds using keybind.ini so make one using this command.
```
dconf dump / | sed -n '/\[org.gnome.settings-daemon.plugins.media-keys/,/^$/p' > keybinds.ini
```
Mind you this will only work if you've set custom shortcuts in Settings > Keyboard > Keyboard Shortcuts.
Alternatively you can use mine which is included in the repo be sure to input your username.
