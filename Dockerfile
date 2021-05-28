FROM kalilinux/kali-rolling

RUN apt -y update && apt -y upgrade && apt -y autoremove && apt clean

RUN apt install curl enum4linux ftp git hydra nmap samba smbclient smbmap sslscan vim -y --no-install-recommends


