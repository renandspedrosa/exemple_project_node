FROM node
WORKDIR /home/node/app
COPY package.json .
COPY index.js .
COPY /migrations .
COPY migration.js .
RUN npm install
CMD ["npm", "run", "dev"]

##criar a imagem do mysql

#docker network create fiap-network

##volume é usado para armazenar os dados do mysql
#docker volume create volume-mysql
##docker volume inspect volume-mysql -- ve os volumes

#docker run -d  --rm --name fiap-mysql -v volume-mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=segredo mysql
#docker network connect fiap-network fiap-mysql
#docker network disconnect bridge fiap-mysql

##caso queira entrar no container do banco MYSQL
##docker exec -it fiap-mysql bash
##mysql -uroot -psegredo

##cria a imagem, o espaço ponto quer dizer que vai ser no local que esta o docker file
#docker build -t fiap-imagem .
##tem que esta com a imagem mysql rodando na mesma network
#docker run -it --rm --name sistema-fiap -p "3000:3000" --network=fiap-network fiap-imagem

##criando o docker compose que vai dar os comando e linkar as imagens atraves deles