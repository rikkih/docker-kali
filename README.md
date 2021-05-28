# Manual Docker Kali Image

This Kali image installs the barebones requirements one might expect when firing up a kali machine.

There is a separate requirements file where you can specify the tools you want included.

## Motivation

I decided to create this image since I didn't have access to a kali instance on my own machine when using [TryHackMe](https://tryhackme.com).

Building this image and running the container will spin up a barebones kali machine with whichever requirements you need.

## Running

If you are unfamiliar with Docker, below is a set of instructions on how to get this container running on your machine:

```
# Buld the orchestration
1. docker-compose build

# Run the kali container
2. docker-compose run kali

# You should be brought into a bash process inside the kali container:
┌──(kali㉿workstation)-[~]
└─$ pwd
/home/kali

```
