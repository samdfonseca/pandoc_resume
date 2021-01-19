FROM pandoc/core:2.11.3.2

RUN apk add --no-cache \
        make \
        texlive-full \
        ttf-dejavu \
        ttf-droid \
        ttf-font-awesome \
        ttf-freefont \
        ttf-hack \
        ttf-liberation \
        ttf-linux-libertine \
        ttf-opensans \
        ttf-roboto \
        ttf-roboto-mono \
        ttf-ubuntu-font-family && \
    mtxrun --generate && \
    rm -rf /var/cache/apk/*
