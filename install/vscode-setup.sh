# Install VSCode

# Installing rpm
#rpm -ivh https://az764295.vo.msecnd.net/stable/5763d909d5f12fe19f215cbfdd29a91c0fa9208a/code-1.45.1-1589445456.el7.x86_64.rpm
sudo dnf install https://az764295.vo.msecnd.net/stable/5763d909d5f12fe19f215cbfdd29a91c0fa9208a/code-1.45.1-1589445456.el7.x86_64.rpm

# Installing extensions
cat ../dotfiles/vscode_extensions.txt | xargs -L 1 code --install-extension

# Copying settings file
cp ../dotfiles/vscode_settings.json ~/.config/Code/User/settings.json
