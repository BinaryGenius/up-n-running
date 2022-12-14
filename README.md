# Hello 👋 let's get started.

*Disclaimer this repo was made with fedora workstation/silverblue in mind you'll need to change the script to suit your distro.*

### Important
The script sets custom keybinds using keybind.ini so make one using this command.
```
dconf dump / | sed -n '/\[org.gnome.settings-daemon.plugins.media-keys/,/^$/p' > keybinds.ini
```
Mind you this will only work if you've set custom shortcuts in Settings > Keyboard > Keyboard Shortcuts. Alternatively you can use mine which is included in this repo, but be sure to input your username where it says "(replaceme!)". Also in keybinds.ini there is a command to change brightness it uses my script which can be found [here](https://github.com/BinaryGenius/Gnome-Brightness-Ctrl). If you want brightness control follow the instructions [here](https://github.com/BinaryGenius/Gnome-Brightness-Ctrl/blob/main/README.md) otherwise remove the key binding.

To preserve all your flatpaks across installs use this script.
```
echo "flatpak install" $(ls ~/.var/app/) > flatpaks.sh
```
It's pretty simple so don't expect much but I think it's better than nothing.
Please note that if you installed then removed a flatpak, and the config files are there this will grab that. But you will have the option to deny the installation if you don't want that app. flatpaks.sh wont automatically say yes to every prompt.

### Installation
```
git clone https://github.com/BinaryGenius/up-n-running; cd up-n-running
```
Make sure keybinds.ini, flatpaks.sh, and start.sh are all in this folder. Now run this and follow the prompts, this may take a while.
```
sh start.sh
```
