FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y squid && \
    apt-get clean

COPY squid.conf /etc/squid/squid.conf

EXPOSE 3128

CMD ["squid", "-N", "-f", "/etc/squid/squid.conf"]
