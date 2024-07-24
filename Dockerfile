
FROM nginx:latest


WORKDIR /usr/share/nginx/html


RUN apt-get update && \
    apt-get install -y cowsay fortune-mod netcat-openbsd && \
    apt-get clean

COPY wisecow.sh /usr/local/bin/wisecow.sh
RUN chmod +x /usr/local/bin/wisecow.sh


EXPOSE 4499


CMD ["sh", "-c", "/usr/local/bin/wisecow.sh & nginx -g 'daemon off;'"]
