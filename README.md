# Isolated OpenVPN connection

If you need an isolated OpenVPN connection on your computer you  can easily use this repo. 

The instance is AlmaLinux 9 based on Red Hat 9.

## Steps to deploy

You need vagrant and libvirt dependencies

### Steps to install vagrant on Fedora
```sh
sudo dnf install @vagrant
sudo dnf install vagrant-libvirt
sudo usermod -aG libvirt $USER
sudo vagrant plugin install vagrant-libvirt
```

### Steps to install vagrant on Ubuntu
```sh
sudo apt-get install qemu-kvm libvirt-bin bridge-utils virt-manager
sudo usermod -aG libvirt $USER
sudo vagrant plugin install vagrant-libvirt
```

### First init

If you have a personaliced ssh config, you need copy your ~/.ssh folder in this folder.

Also you need to copy your ovpn file (and credentials) here.

Now it's time to start

```sh
$ ./openvpn.sh
```

Enter your password and in a few minutes press enter and you will have a bash terminal inside the new machine.

If you need to use an interface, you need to connect using RDP. You can use remmina or Windows remote connection using that:

Server: 192.168.121.240
user: vagrant
pass: vagrant

To shut down the machine, just type exit in the bash terminal.
