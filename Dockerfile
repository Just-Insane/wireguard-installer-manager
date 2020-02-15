# Get the latest ubuntu release
FROM ubuntu:latest

MAINTAINER Prajwal Koirala <www.prajwalkoirala.com>

RUN apt-get update && \
    apt-get install wget -y && \
    wget https://raw.githubusercontent.com/complexorganizations/wireguard-installer-manager/master/wireguard-server.sh -P /etc/wireguard/ && \
    bash /etc/wireguard/wireguard-server.sh

EXPOSE 51820

ENTRYPOINT ["/scripts/run.sh"]

CMD []