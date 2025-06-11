# Ubuntu Desktop Basic Setup Guide

This is my guide to getting started with the Ubuntu desktop OS.

## Setup

```shell
sudo apt update
sudo apt upgrade -y
# sudo ubuntu-drivers devices
# sudo ubuntu-drivers install
sudo apt autoremove

sudo apt install -y nano htop git most tmux unrar curl nmap default-jre python3-venv make tor

sudo snap install v2raya
sudo snap install telegram-desktop
sudo snap install code --classic
sudo snap install pycharm-community --classic
sudo snap install dbeaver-ce
sudo snap install postman
sudo snap install vlc
sudo snap install bing-wall
sudo snap install gimp
# sudo snap install intellij-idea-community
```

* Install [chrome](https://www.google.com/chrome/)
* Install [dropbox](https://www.dropbox.com/install-linux)
* Install [Docker](https://docs.docker.com/engine/install/ubuntu/)
* Install [VirtualBox](https://www.virtualbox.org/wiki/Linux_Downloads)
* Install [Vagrant](https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant)
* Install [Lens](https://docs.k8slens.dev/getting-started/install-lens/#installation-options-on-linux)
* Install [MongoDB Compass](https://www.mongodb.com/docs/compass/master/install/)
* Install [Offset Explorer](https://www.kafkatool.com/download.html)
* Install [FortiClient](https://www.fortinet.com/support/product-downloads#download-vpn-only)
* Install [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-ubuntu)
* Install [Minio Client](https://min.io/docs/minio/linux/reference/minio-mc.html)

### Setup ssh

```shell
sudo apt install openssh-server
sudo ufw allow OpenSSH
sudo ufw enable
# ToDo: Force login by key
```

### Setup Kubernetes

* Install [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)
* Install [minikube](https://minikube.sigs.k8s.io/docs/start/)
* Install [Helm](https://helm.sh/docs/intro/install/#from-apt-debianubuntu)

## Fix

```shell
## tmux
echo "set -g mouse on" > ~/.tmux.conf

## DropBox
sudo apt-key list
sudo apt-key export 5044912E | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/dropbox.gpg
sudo apt-key del 5044912E

## vagrant
vagrant autocomplete install

## Config proxy for Apt
{
    echo 'Acquire::http::proxy "http://127.0.0.1:20171/";'
    echo 'Acquire::https::proxy "http://127.0.0.1:20171/";'
} | sudo tee /etc/apt/apt.conf.d/99proxy

## Docker
{
    echo '{'
    echo '  "registry-mirrors": ["https://docker.iranserver.com", "https://registry.docker.ir", "https://focker.ir"],'
    echo '  "live-restore": true,'
    echo '  "log-driver": "local",'
    echo '  "default-address-pools": [{"base": "172.17.0.0/12", "size": 16}]'
    echo '}'
} | sudo tee /etc/docker/daemon.json

## Ansible
{
    echo
    echo '[defaults]'
    echo 'host_key_checking=False'
} | sudo tee -a /etc/ansible/ansible.cfg

## NTFS
sudo apt-get install -y ntfs-3g
# sudo ntfsfix /dev/<device name>
# sudo ntfsfix -b -d /dev/<device name>

## V2ray
# wget https://github.com/v2fly/v2ray-core/releases/download/v5.15.1/v2ray-linux-64.zip
# unzip v2ray-linux-64.zip to /opt/v2ray
# sudo chown root:root /opt/v2ray/ -R
```

