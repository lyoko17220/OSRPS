FROM ubuntu:latest

RUN apt update && \
    apt install -y \
        python3.6 \
        python3-pip \
        tcpdump \
        dnsutils \
        nmap \
        gawk \
	    apg \
        net-tools \
        lynx \
        apache2 \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install \
        pyshark \
        scapy \
        dig

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

WORKDIR /

ENTRYPOINT ["./entrypoint.sh","/bin/bash"]