#!/usr/bin/env bash

echo "GnuPG key need to be imported"
echo "init passwordstore"
gpg2 --list-keys
echo "Input key id from above:"
read keyid
pass init $keyid

echo "setup pass git"
pass git init

echo "setup pass git remote"
echo "give repo to clone:"
read gitrepo
pass git remote add origin $gitrepo
pass git fetch --all
pass git reset --hard origin/master
pass git branch --set-upstream-to=origin/master master

echo "getting pass from remote"
pass git pull
