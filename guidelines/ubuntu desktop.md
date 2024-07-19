# Ubuntu Desktop Basic Setup Guide

This is my guide to getting started with the Ubuntu desktop OS.

## Setup

```shell
sudo apt update
sudo apt upgrade -y
# sudo ubuntu-drivers autoinstall
sudo apt autoremove

sudo apt install -y htop git tmux tor unrar

sudo snap install v2raya
sudo snap install qv2ray
sudo snap install telegram-desktop
sudo snap install skype
sudo snap install code --classic
sudo snap install pycharm-community --classic
sudo snap install dbeaver-ce
sudo snap install postman
sudo snap install vlc
sudo snap install bing-wall
# sudo snap install intellij-idea-community
```

* Install [chrome](https://www.google.com/chrome/)
* Install [dropbox](https://www.dropbox.com/install-linux)
* Install [Docker](https://docs.docker.com/engine/install/ubuntu/)
* Install [VirtualBox](https://www.virtualbox.org/wiki/Linux_Downloads)
* Install [Vagrant](https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant)
* Install [MongoDB Compass](https://www.mongodb.com/docs/compass/master/install/)

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

### Setup KVM

```shell
egrep -c '(vmx|svm)' /proc/cpuinfo
sudo kvm-ok
sudo apt install -y qemu-kvm libvirtd
sudo systemctl enable --now libvirtd
sudo apt install -y virt-manager
```

### Setup Terraform

* Install [terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli#install-terraform)

```shell
{
	echo 'plugin_cache_dir   = "$HOME/.terraform.d/plugin-cache"'
	echo 'disable_checkpoint = true'
} >> ~/.terraformrc1
```

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
} | sudo tee /etc/apt/apt.conf.d/99proxy1

## V2ray
# wget https://github.com/v2fly/v2ray-core/releases/download/v5.15.1/v2ray-linux-64.zip
# unzip v2ray-linux-64.zip to /opt/v2ray
# sudo chown root:root /opt/v2ray/ -R

## Disable IPv6
#{
#    echo "## Disable IPv6"
#    echo "net.ipv6.conf.all.disable_ipv6 = 1"
#    echo "net.ipv6.conf.default.disable_ipv6 = 1"
#    echo "net.ipv6.conf.lo.disable_ipv6 = 1"
#    echo "net.ipv6.conf.tun0.disable_ipv6 = 1"
#} | sudo tee -a /etc/sysctl.conf
```

