#!/bin/user/env bash

# import my public key from keybase
curl https://keybase.io/magikern/pgp_keys.asc | gpg --import

# Alternetive url
# curl https://sylen.s3-eu-west-1.amazonaws.com/pub/pubkey.asc | gpg --import
