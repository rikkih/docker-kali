# Manual Docker Kali Image

This Kali image installs the barebones requirements one might expect when firing up a kali machine.

There is a separate requirements file where you can specify the tools you want included.

## Motivation

I decided to create this image since I didn't have access to a kali instance on my own machine when using [TryHackMe](https://tryhackme.com).

Building this image and running the container will spin up a barebones kali machine with whichever requirements you need.

## Running

If you are unfamiliar with Docker, below is a set of instructions on how to get this container running on your machine:

# Build the Kali image which is declared in the Dockerfile and tag (-t) the image with `kali-linux`
1. `docker build -t kali-linux .`

# Run the built image as a container
2. TODO
