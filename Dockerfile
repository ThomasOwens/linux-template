FROM debian:12-slim

# TODO Update label for the project.
LABEL Name=linux-template Version=0.1.0

# TODO Install any other required development libraries and packages.
RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates && \
    update-ca-certificates && \
    apt-get install -y --no-install-recommends git && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app
