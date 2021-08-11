FROM nginx:latest

RUN apt update \
    && apt install -y --no-install-recommends tor \
    && rm -rf /var/lib/apt/lists/*
COPY ./torrc/torrc /etc/tor/torrc
COPY site /usr/share/nginx/html