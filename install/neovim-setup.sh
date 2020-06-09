#!/usr/bin/env bash
# Install pynvim for denite
pip3 install --user pynvim

mkdir -p ~/.config/nvim

# copying dotfile
cp ../dotfiles/neovim_init.vim ~/.config/nvim/init.vim

# installing vim-plug plugin manager for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# run neovim install plugins and then quit
if ! [ -x "$(command -v nvim)" ]; then
  echo 'Error: neovim is not installed.' >&2
  exit 1
else
  nvim --headless +PlugInstall +q
fi
