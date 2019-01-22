#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1="\e[40:1;35m[\u \W]\$ \e[m"

alias ll='ls -la'
alias n='nvim'
alias p='sudo pacman'
alias r='ranger'
alias i3cfg='n ~/.config/i3/config'
