FROM node:23

WORKDIR /app-node

# utilizado em tempo de build da imagem
ARG PORT_BUILD=3000

# exportada como variável de ambiente dentro do container
ENV PORT=$PORT_BUILD

EXPOSE $PORT_BUILD

COPY . .

RUN npm install

ENTRYPOINT npm start