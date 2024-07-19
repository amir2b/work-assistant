# Fix virtualbox

```shell
VBoxManage --version
```

---

> Error?

```shell
sudo apt install gcc-12
```

---

> This system is currently not set up to build kernel modules. Please install the Linux kernel "header" files matching the current kernel for adding new hardware support to the system.

```sehll
sudo apt-get install linux-headers-$(uname -r)
sudo /sbin/vboxconfig
VBoxManage --version
```

