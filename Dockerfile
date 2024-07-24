FROM ubuntu:22.04

WORKDIR /wisecow

RUN apt-get update && \
    apt-get install -y cowsay fortune-mod netcat-openbsd && \
    apt-get clean

COPY wisecow.sh .
RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["sh", "-c", "wisecow.sh"]
