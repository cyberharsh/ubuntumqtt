FROM ubuntu:18.04
EXPOSE 80
RUN apt-get update && \
    apt-get install -y wget \
    wget https://nmap.org/dist/nmap-7.60-1.x86_64.rpm \
    apt install -y alien \
    alien nmap-7.60-1.x86_64.rpm \
    dpkg -i nmap_7.60-2_amd64.deb \
    rm -rf nmap-7.60-1.x86_64.rpm \
    apt-get install -y mosquitto-clients \
    apt-get purge --auto-remove -y alien 
