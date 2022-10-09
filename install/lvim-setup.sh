dnf install -y libstdc++-static gcc-c++
dnf install -y neovim
dnf install -y npm


bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

# Lazygit
dnf copr enable atim/lazygit -y
dnf install lazygit
