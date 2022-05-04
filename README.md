# Dump
BabyCare dump for developers

First of all, you need to be on Ubuntu LTS. 
You can get it on :
https://ubuntu.com/download/desktop.
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

Let's generate your pgp key :
```bash
$ gpg --full-generate-key
```

Choose 1, 4096, 0.

```bash
$ gpg --list-secret-keys --keyid-format LONG
```
Your id key is looking like this : sec rsa4096/[THIS_KEY_ID].
Copy your id key and replace it on the next command

```bash
$ gpg --armor --export [THIS_KEY_ID]
```

```bash
$ git config --global user.signingkey [THIS_KEY_ID]
```

```bash
$ git config --global commit.gpgsign true
```
