#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1="\[$(tput bold)\]\[$(tput setaf 5)\][\u \W]$ \[$(tput sgr0)\]"

alias ll='ls -la'
alias n='nvim'
alias p='sudo pacman'
alias r='ranger'
alias t='tmux'
alias i3cfg='n ~/.config/i3/config'
alias restnm='sudo systemctl restart NetworkManager'
