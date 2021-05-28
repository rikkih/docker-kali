FROM kalilinux/kali-rolling

RUN apt-get -y update && apt-get -y upgrade && apt-get -y autoremove && apt-get clean

RUN apt-get install curl enum4linux ftp git hydra nmap samba smbclient smbmap sslscan vim -y --no-install-recommends apt-utils

RUN useradd -m -r -u 1000 -U kali
USER kali
WORKDIR /home/kali

CMD ["/bin/bash"]

