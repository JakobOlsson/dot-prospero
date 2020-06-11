#!/bin/sh
# added pub ssh key to authorized keys
curl -O https://sylen.s3-eu-west-1.amazonaws.com/pub/sshkey.pub
ssh-keygen -f sshkey.pub -i >> ~/.ssh/authorized_keys
