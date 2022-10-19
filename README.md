# Hello 👋 let's get started.

The script sets custom keybinds using keybind.ini so make one using this command.
```
dconf dump / | sed -n '/\[org.gnome.settings-daemon.plugins.media-keys/,/^$/p' > keybinds.ini
```
Mind you this will only work if there you've set custom shortcuts in Settings > Keyboard > Keyboard Shortcuts.
Alternatively you can use mine which is included in the repo.
