FROM debian:13

RUN apt update && apt install -y \
    iproute2 \
    iptables \
    iputils-ping \
    dnsutils \
    curl \
    vim \
    netcat \
    && rm -rf /var/lib/apt/lists/*