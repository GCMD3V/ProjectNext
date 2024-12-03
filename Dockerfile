
FROM node:18

# Crie e defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos package.json e package-lock.json para instalar as dependências
COPY package.json package-lock.json* ./ 

# Instale as dependências do projeto
RUN npm install

# Copie o restante dos arquivos do projeto
COPY . .

# Defina a porta que o container vai expor
EXPOSE 3000

# Comando padrão para rodar o servidor de desenvolvimento
CMD ["npm", "run", "dev"]



# ->ESSE COMANDO CRIA A IMAGEM E PRA ISSO PRECISA INSTALAR AS DEPENDÊNCIAS
# npx create-next-app@latest my-next-app (CRIA O PROJETO DO NEXT)
# cd my-next-app (ENTRA NA PASTA DO PROJETO)
#docker build -t node-container . (CRIA A IMAGEM)

# ->ESSE COMANDO PERMITE INTERAGIR COM A IMAGEM RODANDO EM UM CONTAINER E ACESSA O BASH
#docker run -it node-container /bin/bash 

# ->ESSE COMANDO RODA A IMAGEM EM UM CONTAINER, PERMITE ACESSAR A PORTA 3000, APONTA O VOLUME PARA A PASTA DO PROJETO E ACESSA O BASH (AO APONTAR A PASTA, PERMITE RELACIONAR O VOLUME DOCKER COM A PASTA DO PROJETO SALVANDO AS  ALTERAÇÕES TANTO NO CONTAINER QUANTO NO HOST)
#docker run -it -p 3000:3000 -v C:\Desenvolvimento\ProjetoNext\docker-build\my-next-app:/usr/src/app node-container /bin/bash

# git init
# git add origin URL
# git branch -M main
# git pull origin main
# git checkout -b nome-da-branch origin/nome-da-branch
# git branch - u main
