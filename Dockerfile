FROM debian:trixie-slim
WORKDIR /app
COPY ./ ./
CMD [ "bash", "./entrypoint.sh" ]
