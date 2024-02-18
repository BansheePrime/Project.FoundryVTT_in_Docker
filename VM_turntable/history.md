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
