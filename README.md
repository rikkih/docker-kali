# Manual Docker Kali Image

This Kali image installs the barebones requirements one might expect when firing up a kali machine.

There is a separate requirements file where you can specify the tools you want included.

## Motivation

I decided to create this image since I didn't have access to a kali instance on my own machine when using [TryHackMe](https://tryhackme.com).

Building this image and running the container will spin up a barebones kali machine with whichever requirements you need.

## Running

Firstly, if you're using this to connect to a TryHackMe room, set an environment variable called `OPENVPN_CONFIG_PATH` and `OPENVPN_CONFIG_FILE_NAME` to your OpenVPN config file path and config file name, respectively. Secondly, create a password for sudo privileges and store this in an environment variable called `KALI_ROOT_PWD`. This is for using `openvpn`.

```
$ export OPENVPN_CONFIG_PATH=~/.my-open-vpn-config.ovpn
$ export OPENVPN_CONFIG_FILE_NAME=my-open-vpn-config.ovpn
$ export KALI_ROOT_PWD=RootPassword
```

To get the dokcer container up and running, run the executable `run.sh`:

```
# Run executable
$ ./run.sh

# You should be brought inside a bash process within the kali container in the /home/kali user directory
┌──(kali㉿workstation)-[~]
└─$ 

# [OPTIONAL] Configure your TryHackMe openvpn connection. I have included tmux in the default config for multiplexing.
$ sudo openvpn <your-openvpn-file-name>.ovpn
```

