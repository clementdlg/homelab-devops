FROM ubuntu:24.04

RUN apt-get update && apt-get install bind9 -y

USER bind
EXPOSE 53/udp

ENTRYPOINT [ "/usr/sbin/named" ]
CMD [ "-c", "/etc/bind/named.conf", "-f", "-g" ]
