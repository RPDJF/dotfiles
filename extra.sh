#!/bin/bash

confirm_action() {
    echo
    read -p "$1 (y/n)? " choice
    [[ "$choice" == "y" ]]
}

if confirm_action "Install games"; then
    if [ -e $HOME/.bin/Wakfu-Setup-x86_64.AppImage ]; then
        echo "wakfu setup already downloaded"
    else
        echo "downloading wakfu setup to ~/.bin"
        mkdir -p ~/.bin/
        curl -L --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.    36" -o ~/.bin/Wakfu-Setup-x86_64.AppImage "https://download.ankama.com/launcher-wakfu/full/linux" && chmod +x ~/.bin/Wakfu-Setup-x86_64.AppImage
    fi
    echo linking wakfu desktop file
    ln -s $PWD/.myconfig/ressources/Wakfu.desktop $HOME/.local/share/applications/Wakfu.desktop 2>/dev/null
    ln -s $PWD/.myconfig/ressources/wakfu.png $HOME/.bin/wakfu.png 2>/dev/null
fi
if confirm_action "(Re)install SDDM"; then
    (echo 1 && echo 4) | sh -c "$(curl -fsSL https://raw.githubusercontent.com/keyitdev/sddm-astronaut-theme/master/setup.sh)"
fi
