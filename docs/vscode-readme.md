## VSCode Tips and tricks

Dump extensions:\
`code --list-extensions > extensions.txt`

Install Extensions with bash (Linux, OSX and WSL):\
`cat extensions.txt | xargs -L 1 code --install-extension`

Install Extensions on Windows with PowerShell:\
`cat extensions.txt |% { code --install-extension $_}`

Depending on your platform, the user settings file is located here:
- Windows %APPDATA%\Code\User\settings.json
- macOS $HOME/Library/Application Support/Code/User/settings.json
- Linux $HOME/.config/Code/User/settings.json


## VSCode From Flathub / Flatpak
Flatpak version of VS Code runs inside a container\
[Flatpak warnings](https://github.com/flathub/com.vscodium.codium/blob/master/flatpak-warning.txt)

Location of settings.json\
$HOME/.var/app/com.visualstudio.code/config/Code/User/settings.json

List install extensions (which are installed in ~/.var/app/com.visualstudio.code/data/vscode/extensions)\
`flatpak run --command=code com.visualstudio.code --list-extensions`



