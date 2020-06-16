#!/usr/bin/env bash

# import my public key from keybase
curl https://keybase.io/magikern/pgp_keys.asc | gpg --import

# Alternetive url
# curl https://sylen.s3-eu-west-1.amazonaws.com/pub/pubkey.asc | gpg --import

echo "Remember to edit and trust the key"
echo "Also: If there is a built-in SmartCard-reader, it will conflict with USB based GNUPG SmartCard"
