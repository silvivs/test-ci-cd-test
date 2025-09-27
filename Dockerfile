# Use uma imagem base oficial da sua linguagem
FROM node:16

# Crie o diretório de trabalho na imagem
WORKDIR /app

# Copie os arquivos de dependência e instale
COPY package*.json ./
RUN npm ci

# Copie o restante do código da aplicação
COPY . .

# Exponha a porta que a aplicação vai rodar
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["npm", "start"]