#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# start hyprland
if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi

# random wp
shufflebg
