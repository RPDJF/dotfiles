#!/bin/bash

echo "linkin .vimrc..."
rm -rf $HOME/.vimrc.bak
mv $HOME/.vimrc $HOME/.vimrc.bak
ln -s $PWD/.vimrc $HOME/.vimrc
sudo rm -rf /root/.vimrc.bak
sudo mv /root/.vimrc /root/.vimrc.bak
sudo ln -s $PWD/.vimrc /root/.vimrc

echo "linking scripts..."
rm -rf $HOME/.scripts.bak
mv $HOME/.scripts $HOME/.scripts.bak
ln -s $PWD/.scripts $HOME/.scripts

echo "linking .myconfig..."
rm -rf $HOME/.myconfig.bak
mv $HOME/.myconfig $HOME/.myconfig.bak
ln -s $PWD/.myconfig $HOME/.myconfig

echo "linking .bashrc..."
rm -rf $HOME/.bashrc.bak
mv $HOME/.bashrc $HOME/.bashrc.bak
ln -s $PWD/.bashrc $HOME/.bashrc

echo "linking Hypr config files..."
rm -rf $HOME/.config/hypr.bak
mv $HOME/.config/hypr $HOME/.config/hypr.bak
ln -s $PWD/.config/hypr $HOME/.config/hypr
hyprctl reload
echo "linking kitty config files..."
rm -rf $HOME/.config/kitty.bak
mv $HOME/.config/kitty $HOME/.config/kitty.bak
ln -s $PWD/.config/kitty $HOME/.config/kitty
echo "linking waybar config files..."
rm -rf $HOME/.config/waybar.bak
mv $HOME/.config/waybar $HOME/.config/waybar.bak
ln -s $PWD/.config/waybar $HOME/.config/waybar
echo "linking wofi config files..."
rm -rf $HOME/.config/wofi.bak
mv $HOME/.config/wofi $HOME/.config/wofi.bak
ln -s $PWD/.config/wofi $HOME/.config/wofi

echo "sourcing .bashrc..."
source $HOME/.bashrc