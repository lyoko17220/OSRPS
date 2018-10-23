FROM ubuntu:latest

RUN apt update && \
    apt install -y \
        python3.6 \
        python3-pip \
        tcpdump \
        dnsutils \
        nmap \
        gawk \
    && rm -rf /var/lib/apt/lists/*


RUN pip3 install \
        pyshark \
        scapy \
        dig