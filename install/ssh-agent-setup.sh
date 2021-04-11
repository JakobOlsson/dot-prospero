#!/usr/bin/env bash
# Setup ssh-agent as a systemd service for the user

mkdir -p ~/.config/systemd/user
cat <<EOF > ~/.config/systemd/user/ssh-agent.service
[Unit]
Description=SSH key agent
[Service]
Type=forking
Environment=SSH_AUTH_SOCK=%t/ssh-agent.socket
ExecStart=/usr/bin/ssh-agent -a $SSH_AUTH_SOCK
[Install]
WantedBy=default.target
EOF

# Enable the new service for the user to stat at login
systemctl --user enable ssh-agent.service

# Setup the shell to use the agent
if ! grep -q "SSH_AUTH_SOCK" ~/.bash_profile; then
  cat <<EOF >> ~/.bash_profile
# use systemd started ssh-agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
EOF
fi

RED='\033[0;31m'
GREEN='\033[0;32m'
NOCOLOR='\033[0m'
echo -e "add keys with:$GREEN ssh-add ~/.ssh/id_keyname$NOCOLOR"
echo -e "list keys added to agent:$GREEN ssh-add -l"
