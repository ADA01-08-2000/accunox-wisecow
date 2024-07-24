FROM ubuntu:latest


RUN apt-get update && \
    apt-get install -y cowsay fortune-mod netcat-openbsd && \
    apt-get clean

ENV PATH=$PATH:/usr/games

WORKDIR /wisecow

COPY wisecow.sh .

RUN chmod +x wisecow.sh
EXPOSE 4499

CMD ["./wisecow.sh"]
