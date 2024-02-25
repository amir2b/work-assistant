# Ubuntu Desktop Basic Setup Guide

This is my guide to getting started with the Ubuntu desktop OS.

## Setup

```shell
sudo apt update
sudo apt upgrade -y
# sudo ubuntu-drivers autoinstall
sudo apt autoremove

sudo apt install -y htop git tmux tor

sudo snap install v2raya
sudo snap install telegram-desktop
sudo snap install skype
sudo snap install code --classic
sudo snap install pycharm-community --classic
sudo snap install dbeaver-ce
sudo snap install postman
sudo snap install bing-wall
# sudo snap install intellij-idea-community
```

* Install [chrome](https://www.google.com/chrome/)
* Install [dropbox](https://www.dropbox.com/install-linux)
* Install [Docker](https://docs.docker.com/engine/install/ubuntu/)
* Install [VirtualBox](https://www.virtualbox.org/wiki/Linux_Downloads)
* Install [Vagrant](https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant)

## Setup Kubernetes

* Install [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)
* Install [minikube](https://minikube.sigs.k8s.io/docs/start/)

## Fix

```shell
## Disable IPv6
#{
#    echo "## Disable IPv6"
#    echo "net.ipv6.conf.all.disable_ipv6 = 1"
#    echo "net.ipv6.conf.default.disable_ipv6 = 1"
#    echo "net.ipv6.conf.lo.disable_ipv6 = 1"
#    echo "net.ipv6.conf.tun0.disable_ipv6 = 1"
#} | sudo tee -a /etc/sysctl.conf

## tmux
echo "set -g mouse on" > ~/.tmux.conf

## DropBox
sudo apt-key list
sudo apt-key export 5044912E | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/dropbox.gpg
sudo apt-key del 5044912E

## VirtualBox
# sudo apt install gcc-12
```
