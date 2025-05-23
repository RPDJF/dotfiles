
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
source ~/.myconfig/bashrc/index


# Load Angular CLI autocompletion.
source <(ng completion script)
export BROWSER=microsoft-edge-stable
alias microsoft-edge-stable="microsoft-edge-stable --enable-features=UseOzonePlatform --ozone-platform=wayland"
