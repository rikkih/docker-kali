# Manual Docker Kali Image

This Kali image installs the barebones requirements one might expect when firing up a kali machine.

There is a separate requirements file where you can specify the tools you want included.

## Motivation

I decided to create this image since I didn't have access to a kali instance on my own machine when using [TryHackMe](https://tryhackme.com).

Building this image and running the container will spin up a barebones kali machine with whichever requirements you need.

## Running

Firstly, if you're using this to connect to a TryHackMe room, set an environment variable called `OPENVPN_CONFIG_PATH` to your OpenVPN config file. Secondly, create a password for sudo privileges and store this in an environment variable called `KALI_ROOT_PWD`. This is for using `openvpn`.

```
$ export OPENVPN_CONFIG_PATH=~/.my-open-vpn-config.ovpn
```

If you are unfamiliar with Docker, below is a set of instructions on how to get this container running on your machine:

```
1. Buld the orchestration
$ docker-compose build

2. Run the kali container
$ docker-compose run kali

3. You should be brought inside a bash process within the kali container
┌──(kali㉿workstation)-[~]
└─$ pwd
/home/kali
```

