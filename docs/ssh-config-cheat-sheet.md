## SSH config
the file `~/.ssh/config` can be configured with hosts you normally use

# File Structure
host
```
Host shortname
  HostName 192.168.0.1
  User fedora
  IdentityFile ~/.ssh/fedora-key.pem
  ForwardAgent yes
  LocalForward 3000 127.0.0.1:3000
```

- HostName is the ip or fqdn of the host
- User is the default user to connect with
- IdentityFile is the same as the provided with `-i` option
- ForwardAgent is same as `-A` option
- LocalForward is same as `-L` option, a port localy is forward to the remotes host interface:port

  The example is for AWS SAM. `sam local start-api` will start a server on localhost:3000

Connecting would now just need: `ssh shortname`

# Other Interesting options
- RemoteForward same as LocalForward but in reverse
  
  Example: RemoteForward 8080 localhost:80
  Connection to remote host port 80 will be forward back to localhost port 8080
  
- GatewayPorts yes

  This work in concert with RemoteForward, allowing connections on the remote port
  from other host than the remote server (default: no)


_Read more: man ssh config_
