##

### create users Frodo Baggins, Meriadoc "Merry" Brandybuck, Peregrin "Pippin" Took, Samwise "Sam" Gamgee

### create ssh keypair for admin user
<https://www.ssh.com/academy/ssh/keygen>

ssh-keygen -f ~/samwise-key-rsa -t rsa -b 4096
ssh-copy-id -i ~/.ssh/samwise-key-rsa samwise@192.168.56.48
#### passphrase
-p “Change the passphrase” This option allows changing the passphrase of a private key file with [-P old_passphrase] and [-N new_passphrase], [-f keyfile].

Testing:
sudo adduser -m -c "Test User Account" treebeard
echo "$new_username:$new_password" | chpasswd
sudo passwd samwise
#### add to ~/.ssh/config file 
Host foundryvtt
    Hostname 192.168.56.48
    User samwise
    IdentityFile ~/.ssh/samwise-key-rsa

### change user default shell
from sh to bash
command `useradd -D ` shows all defaults while adding new user

### create new sshd_config
1. CLEAR directories: /etc/ssh/sshd_config.d/ and /etc/ssh/ssh_config.d/

### ansible directory layout
<https://docs.ansible.com/ansible/latest/tips_tricks/sample_setup.html#sample-setup>

./inventories/production/
./inventories/staging/
./roles/

### control.yaml
prepartions for control node

### vagrant.yaml
prep for vagrant vm

### foundryvtt.yaml
prep for VTT host