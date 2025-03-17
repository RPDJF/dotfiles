#!/bin/bash
#install wakfu
if [ -e $HOME/.bin/Wakfu-Setup-x86_64.AppImage ]; then
    echo "wakfu setup already downloaded"
else
    echo "downloading wakfu setup to ~/.bin"
    mkdir -p ~/.bin/
    wget https://download.ankama.com/launcher-wakfu/full/linux --output ~/.bin/Wakfu-Setup-x86_64.AppImage
fi
echo linking wakfu desktop file
ln -s $PWD/.myconfig/ressources/Wakfu.desktop $HOME/.local/share/applications/Wakfu.desktop
ln -s $PWD/.myconfig/ressources/wakfu.png $HOME/.bin/wakfu.png
