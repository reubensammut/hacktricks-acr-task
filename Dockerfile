FROM node:20-alpine
WORKDIR /app
COPY ./ ./
CMD [ "bash", "./entrypoint.sh" ]
