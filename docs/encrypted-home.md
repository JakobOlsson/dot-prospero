## Encrypt a Users home-directory

**Install eCryptFs**
[eCryptFs](https://www.ecryptfs.org/)
fedora: 
  - `sudo dnf install -y ecryptfs-utils`

## Configure PAM
To unwrap a mount passphrase and automatically mount a private directory on login, add the following lines to
/etc/pam.d/system-auth:

auth    required        pam_ecryptfs.so unwrap


/etc/pam.d/common-session:
session optional        pam_ecryptfs.so unwrap



To encrypt a given "<usernames>" home-directory, run following:
`sudo ecryptfs-migrate-home –u <username>`

As the "<username>", add a passfrase with:
`ecryptfs-add-passphrase`

---

## SSH passwordless with encrypted home-directory
Since ssh will not be able to read the `~/.ssh/authorized_keys` until after decryption,
the key have to be made available from another location.

Create a <username> folder in `/etc/ssh`
`mkdir -p /etc/ssh/<username>`

Add the public ssh key to the `authorized_keys` file in the newly created directory
`cp ~/.authorized_keys /etc/ssh/<username>/authorized_keys`

Configure sshd to use this file for users by adding following line to `/etc/ssh/sshd_config`
`AuthorizedKeysFile    /etc/ssh/%u/authorized_keys`


### Documentation on AuthorizedKeysFile
The AuthorizedKeysFile configuration option in `/etc/ssh/sshd_config` specifies where the SSH server looks for authorized keys. The option may contain more than one location, separated by spaces. `%%` is replaced by literal `%`, `%h` by the *home directory* of the user being authenticated, and `%u` by the login name of the user. For example, `/var/ssh/%u/ak` would cause the SSH server to look for authorized keys for the user *jane* from `/var/ssh/jane/ak`.

The AuthorizedKeysCommand option can be used to specify a program that is used to fetch authorized keys for a user. The program gets as argument the user name for which to look for keys. A common use of this option is to fetch authorized keys from an LDAP directory.


