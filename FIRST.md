```shell
sudo apt update
sudo apt upgrade -y
sudo apt autoremove
sudo ubuntu-drivers autoinstall

sudo apt install -y htop git tor
# network-manager-openvpn-gnome
```

Install [chrome](https://www.google.com/chrome/)
Install [dropbox](https://www.dropbox.com/install-linux)
Install [Docker](https://docs.docker.com/engine/install/ubuntu/)
Install v2raya (from snap)
Install telegram (from snap)
Install skype (from snap)
Install vscode (from snap)
Install VirtualBox (from snap)
Install [Vagrant](https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant)
Install BingWall (from snap)
Install pycharm (from snap)
Install Intellij (from snap)
Install postman (from snap)

## Fix

```shell
# DropBox
sudo apt-key list
sudo apt-key export 5044912E | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/dropbox.gpg
sudo apt-key del 5044912E
```

