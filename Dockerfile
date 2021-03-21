FROM alpine:3.12

RUN apk --update add curl less python3 git openssl && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY . /app

CMD python3 /app/updater.py
