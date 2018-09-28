FROM node:10.10.0-slim
LABEL maintener="luismiguel.reyes@orbis.com.pe"

EXPOSE 80
COPY preguntas.md app/
WORKDIR /app