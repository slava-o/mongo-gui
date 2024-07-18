# Definindo a imagem base
FROM node:lts-alpine

COPY . /app

WORKDIR /app

ENV OPENAI_API_KEY key

RUN npm install

# HEALTHCHECK --interval=10s CMD curl --fail http://localhost:4321 || exit 1

ENTRYPOINT ["sh","/app/entrypoint.sh"]
