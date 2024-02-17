## checks:
1. state of root login in the sshd_config file.
`/etc/ssh/sshd_config`
`PasswordAuthentication yes`

2. SSH key passphrases by modifying the sshd_config file. // Not yet
3. restarts the sshd service to apply the changes.

### hardening ssh
1. Disable empty passwords
`PermitEmptyPasswords no`

2. Change default SSH ports // Ignored by most RIGHTFULLY
3. Disable root login via SSH
4. Configure idle timeout interval
`ClientAliveInterval 300`
`ClientAliveCountMax 2`

5. Allow SSH access to selected users only
`AllowUsers User1 User2`
`AllowGroups ssh_group`

6. Disable X11 Forwarding
`X11Forwarding no`

7. Mitigate brute force attacks automatically
Fail2Ban

8. Disable password based SSH login

###  see all the parameters of your SSH server using this command:
`sshd -T`

### steps to proceed:
<https://www.digitalocean.com/community/tutorials/how-to-harden-openssh-on-ubuntu-20-04>  
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
sudo sshd -T
sudo vim /etc/ssh/sshd_config
`PermitRootLogin no`
`MaxAuthTries 3`
`LoginGraceTime 20`
`PasswordAuthentication no`
`PermitEmptyPasswords no`
`X11Forwarding no`
`AllowAgentForwarding no`
`AllowTcpForwarding no`
`DebianBanner no`
sudo sshd -t
sudo systemctl reload sshd.service


### ufw
<https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands>

`sudo ufw status`
`sudo ufw app list`
`sudo ufw allow 'OpenSSH'`
`sudo ufw limit ssh`
`sudo ufw status numbered`
`sudo ufw enable`

### filtering curl output with sed and awk
curl -I --silent 192.168.56.49:30000 | sed -n '3 p'  
curl -I --silent 192.168.56.49 | awk 'NR==3'  
and droping errors
echo 'port 30000 --- ' $(curl -I --silent 192.168.56.49:30000 2>/dev/null | sed -n '3 p')


### check.sh while applying ufw playbook
`watch -n 10 ./check.sh`
 