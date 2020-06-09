#!/usr/bin/env bash
echo "Installing oh-my-zsh"
export RUNZSH=no
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) exit"

echo "Installing grubbox theme"
curl -L https://raw.githubusercontent.com/sbugzu/gruvbox-zsh/master/gruvbox.zsh-theme > ~/.oh-my-zsh/custom/themes/gruvbox.zsh-theme
echo "Installing autosuggestion fish like plugin"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "Installing zsh syntax highlighting fish like plugin"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# copying dotfile
cp ../dotfiles/zshrc ~/.zshrc
