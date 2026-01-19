FROM 32bit/ubuntu:16.04

RUN apt-get update && \
    apt-get install -y build-essential git && \
    rm -rf /var/lib/apt/lists/*

ENV BETALIB=/root/beta

RUN mkdir $BETALIB
WORKDIR /root/beta

CMD ["bash"]
