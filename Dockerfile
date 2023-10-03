FROM node
WORKDIR /usr/src/app
COPY package.json .
RUN npm install
COPY index.js .
CMD ["node", "index"]


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


#docker build -t fiap-imagem .
##tem que esta com a imagem mysql rodando na mesma network
#docker run -it --rm --name sistema-fiap -p "3000:3000" --network=fiap-network fiap-imagem

##criando o docker compose que vai dar os comando e linkar as imagens atraves deles