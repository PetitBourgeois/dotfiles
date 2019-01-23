#
# ~/.bash_profile
#

if [[ "$(tty)" == '/dev/tty1' ]]; then
exec startx
fi
[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR="nvim"
export TERMINAL="urxvt"
export BROWSER="chromium"
export FILE="ranger"
