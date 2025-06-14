FROM debian:trixie-slim
WORKDIR /app
ADD https://github.com/moparisthebest/static-curl/releases/download/v8.11.0/curl-amd64 /usr/bin/curl
RUN chmod +x /usr/bin/curl
COPY ./ ./
CMD [ "bash", "./entrypoint.sh" ]
