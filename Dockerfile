FROM kalilinux/kali-rolling

RUN apt-get -y update && \
	apt-get -y upgrade && \
	apt-get -y autoremove && \
	apt-get clean

RUN apt-get install -y \
	apt-utils \
	curl \
	enum4linux \
	ftp \
	git \
	hydra \
	openvpn \
	nmap \
	samba \
	smbclient \
	smbmap \
	ssh \
	sslscan \
	sudo \
	tmux \
	vim \
	--no-install-recommends

ARG kali_root_pwd

RUN useradd -m -r -u 1000 -U kali && \
	echo "kali:${kali_root_pwd}" | chpasswd && \
	adduser kali sudo

USER kali
WORKDIR /home/kali

CMD ["/bin/bash"]

