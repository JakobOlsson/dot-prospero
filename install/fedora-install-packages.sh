# Packages and Applications to install for Fedora
# ***********************************************
# vim with clipboard support
# sudo dnf -y install vim-enhanced
# sudo dnf -y install vim-X11
# nice vim plugin for search/brows/open files <Leader>t
# sudo dnf -y install vim-command-t
# install neovim
sudo dnf -y install neovim
# zsh Zshell
sudo dnf -y install zsh
# fish - a nice shell
sudo dnf -y install fish
# tiled terminal emulator for gnome
# sudo dnf -y install tilix
# install tmux - tiled terminal
sudo dnf -y install tmux
# nnn - command line file browser URL: https://github.com/jarun/nnn
sudo dnf -y install nnn
# install xsel for xclipboard tool
sudo dnf -y install xsel
# source highlighting helper - to get source highlight in less
sudo dnf -y install highlight
# powerline shell statusline
sudo dnf -y install powerline powerline-fonts
# dash-to-dock gnome extension
sudo dnf -y install gnome-shell-extension-dash-to-dock
# smart card support (gpg smartcard)
sudo dnf -y install pcsc-tools pcsc-lite
sudo systemctl enable pcscd
sudo systemctl start pcscd
# install gnu password manager and pass-otp
sudo dnf -y install pass qrencode xclip pass-otp zbar
# helper tools: ripgrep, jq
sudo dnf -y install ripgrep jq
