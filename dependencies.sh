sudo pacman -S xf86-video-intel xf86-video-ati mesa noto-fonts rxvt-unicode dmenu \
    xorg-server xorg-xinit xorg-xbacklight xorg-xinput i3 feh chromium emacs neovim \
    alsa-utils pulseaudio pulseaudio-alsa lm_sensors ranger ttf-hack sysstat dunst

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
