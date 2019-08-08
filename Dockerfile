FROM python:3.7.4-stretch

ENV DEBIAN_FRONTEND noninteractive

# Install any needed Python modules
RUN pip install --trusted-host pypi.python.org \
aiohttp \
ansible \
asyncssh \
colorama \
django \
exabgp \
genie \
flask \
ipyats \
napalm \
ncclient \
netdev \
paramiko \
nornir \
pyyaml \
requests \
scapy \
tqdm \
textfsm \
xmltodict

# Install other packages
RUN apt-get update && apt-get install -y vim netcat jq tree socat tcpdump

# Create directories
RUN mkdir -p /etc/exabgp /root/.ssh/ /scripts

# Copy files
COPY exabgp /etc/exabgp

# exaBGP
RUN mkfifo -m 0666 /var/run/exabgp.in /var/run/exabgp.out

# Get NetworkToCode TextFSM templates and set env
RUN git clone https://github.com/networktocode/ntc-templates.git /scripts/ntc-templates
ENV NET_TEXTFSM /scripts/ntc-templates/templates/

# Add ciphers and key exchange algorithms to ssh config
RUN echo "KexAlgorithms diffie-hellman-group1-sha1,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group14-sha1" > /root/.ssh/config \
&& echo "Ciphers 3des-cbc,blowfish-cbc,aes128-cbc,aes128-ctr,aes256-ctr" >> /root/.ssh/config \
&& chown -R root /root/.ssh/

WORKDIR /scripts

EXPOSE 179 1790 4000 5000 8000

VOLUME [ "/root","/usr", "/scripts" ]
