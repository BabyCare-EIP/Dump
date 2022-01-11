# Dump
BabyCare dump for developers

First of all, you need to be on Ubuntu LTS. You can get it on :
https://www-ftp.lip6.fr/pub/linux/distributions/Ubuntu/releases/20.04.3/ubuntu-20.04.3-desktop-amd64.iso

You can create a bootable usb with Rufus : https://rufus.ie/en/

Once Ubuntu LTS is installed, you have to run this command :

```bash git clone https://github.com/BabyCare-EIP/Dump.git
mv Dump /tmp && cd /tmp/Dump
chmod +x *.sh
sudo ./install.sh
```

Then, you have to import your public ssh key on your github account, and execute this another command :

```bash
sudo ./clone.sh
```

You must now identify yourself. Use theses commands :

```bash
$ git config user.name ""
$ git config user.email ""
```

