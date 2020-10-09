FROM ubuntu:18.04
EXPOSE 80
RUN apt-get update
RUN apt-get install -y wget
RUN wget https://nmap.org/dist/nmap-7.60-1.x86_64.rpm
RUN apt install -y alien
RUN alien nmap-7.60-1.x86_64.rpm
RUN dpkg -i nmap_7.60-2_amd64.deb
RUN rm -rf nmap-7.60-1.x86_64.rpm
RUN apt-get install -y mosquitto-clients
RUN apt-get purge --auto-remove -y alien
