FROM debian:bookworm-slim
RUN rm -f /etc/apt/sources.list.d/debian.sources \
 && printf 'deb http://deb.debian.org/debian bookworm main\n' > /etc/apt/sources.list \
 && apt-get update \
 && apt-get install -y --no-install-recommends php8.2-cli=8.2.32-1~deb12u1 \
 && rm -rf /var/lib/apt/lists/*
